# Class that create a invoice with observers on change line concepts
class Invoice
  attr_accessor :business, :line_concepts

  def initialize(business, line_concepts, observers)
    @busines = business
    @line_concepts = line_concepts
    @observers = observers

    @line_concepts.each do |line_concept|
      notify_observers(line_concept)
    end
  end

  def add_line_concept(line_concept)
    @line_concepts << line_concept
    notify_observers(line_concept)
  end

  # Notify observers about changes in line_concepts
  def notify_observers(line_concept)
    @observers.each do |observer|
      observer.notify(line_concept)
    end
  end
end
