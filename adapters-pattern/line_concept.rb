# frozen_string_literal: true

# Class that is the target that should to be reached
class LineConcept
  def initialize(concept, n_items)
    @concept = concept
    @n_items = n_items
  end

  def resume
    puts "#{@n_items} - #{@concept}"
  end
end
