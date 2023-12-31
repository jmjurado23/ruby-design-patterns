# frozen_string_literal: true

require_relative './invoice'
require_relative './buyer'
require_relative './seller'
require_relative './line_concept'

# Builder to create an invoice
class InvoiceBuilder
  attr_reader :invoice

  def initialize
    @invoice = Invoice.new(nil, nil, nil)
  end

  def add_buyer(name = 'sample buyer')
    buyer = Buyer.new(name)
    @invoice.buyer = buyer
  end

  def add_seller(name = 'sample seller')
    seller = Seller.new(name)
    @invoice.seller = seller
  end

  def add_line_concept(concept = 'sample concept', n_elems = 1)
    line_concept = LineConcept.new(concept, n_elems)
    @invoice.line_concepts << line_concept
  end
end
