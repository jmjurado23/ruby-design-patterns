# frozen_string_literal: true

# Main class to define operations
class Operation
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def calculate(_elem)
    reaise 'Not method defined'
  end
end
