# frozen_string_literal: true

require_relative './operation'

# Apply a tax operation over an amount
class TaxOperation < Operation
  def initialize(concept, tax)
    @tax = tax
    super(concept)
  end

  def calculate(amount)
    amnt = amount.dup

    amnt + (amnt * @tax)
  end
end
