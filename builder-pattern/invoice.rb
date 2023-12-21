# Class original that represent an invoice
class Invoice
  attr_reader :seller, :line_concepts

  def initialize(seller, line_concepts)
    @seller = seller
    @line_concepts = line_concepts
  end
end
