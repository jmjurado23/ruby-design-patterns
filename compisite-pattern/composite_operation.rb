# frozen_string_literal: true

# Let us group operations and execute them in one time
class CompositeOperation
  def initialize(name)
    @name = name
    @operations = []
  end

  def add_operation(operation)
    @operations << operation
  end

  def remove_operation(operation)
    @operations.delete(operation)
  end

  def calculate(amount)
    amnt = amount.dup

    @operations.each do |operation|
      amnt = operation.calculate(amnt)
    end

    amnt
  end
end
