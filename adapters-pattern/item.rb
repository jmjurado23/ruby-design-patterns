# frozen_string_literal: true

# Element that is not compatible with resume line_concept method
class Item
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
