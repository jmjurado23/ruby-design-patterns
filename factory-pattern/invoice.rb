# Class original that represent an invoice
class Invoice
  attr_reader :business, :line_concepts

  def initialize(business, line_concepts)
    @business = business
    @line_concepts = line_concepts
  end
end
