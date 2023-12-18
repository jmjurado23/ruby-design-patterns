# Module that add obsersable methods to a class
module Observable
  def observers
    @observers ||= []
  end

  # Add an observer to the class
  def add_observer(observer)
    observers << observer
  end

  # Delete an observer from the class
  def delete_observer(observer)
    observers.delete(observer)
  end

  # Notify observers about changes in line_concepts
  def notify_observers(line_concept)
    observers.each do |observer|
      observer.notify(line_concept)
    end
  end
end
