require_relative './observer'

# Observer for total of elements
class TotalObserver < Observer
  def notify(elem)
    puts "Total updated with: #{elem}"
  end
end
