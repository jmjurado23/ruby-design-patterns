# Class original that represent an invoice
class Invoice
  def initialize(seller, line_concepts)
    @seller = seller
    @line_concepts = line_concepts
  end

  def total_amount
    puts '- Showing total amount'
  end
end
