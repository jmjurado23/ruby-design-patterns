# frozen_string_literal: true

require_relative './operation'

# Apply a discount operation over a amount
class DiscountOperation < Operation
  def initialize(concept, discount)
    @discount = discount
    super(concept)
  end

  def calculate(amount)
    amnt = amount.dup

    amnt - (amnt * @discount)
  end
end
