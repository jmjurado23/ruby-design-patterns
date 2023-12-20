# Class original that represent an invoice
class Invoice
  def initialize(business, line_concepts)
    @business = business
    @line_concepts = line_concepts
  end

  def total_amount
    puts '- Showing total amount'
  end
end
