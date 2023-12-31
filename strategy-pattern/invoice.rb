# frozen_string_literal: true

# Class that use a strategy to create an invoice
class Invoice
  attr_accessor :seller, :line_concepts

  def initialize(creator)
    @creator = creator
  end

  def generate
    check_data
    create_invoice
  end

  def add_seller(seller)
    @seller = seller
  end

  def add_line_concepts(line_concepts)
    @line_concepts = line_concepts
  end

  def check_data
    raise 'Not implemented data' if !@seller || !@line_concepts
  end

  def create_invoice
    @creator.create(self)
  end
end
