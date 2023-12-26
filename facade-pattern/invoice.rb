# frozen_string_literal: true

# Class original that represent an invoice
class Invoice
  attr_accessor :seller, :buyer, :line_concepts

  def initialize(seller, buyer, line_concepts)
    @seller = seller
    @buyer = buyer
    @line_concepts = line_concepts || []
  end
end
