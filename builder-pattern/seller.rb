# frozen_string_literal: true

# Seller for invoices
class Seller
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
