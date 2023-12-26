# frozen_string_literal: true

# Buyer for invoices
class Buyer
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
