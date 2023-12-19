# frozen_string_literal: true

require_relative './observer'

# Observer for storage of elements
class StorageObserver < Observer
  def notify(elem)
    puts "Storage updated substracting: #{elem}"
  end
end
