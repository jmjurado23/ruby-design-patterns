# Singleton class to define invoice
class Invoice
  @@total_line_concepts = 0

  def initialize(seller, line_concepts)
    @seller = seller
    @line_concepts = line_concepts
    add_total_amount
  end

  def add_total_amount
    @@total_line_concepts += @line_concepts.count
  end

  def self.show_total_line_concepts
    @@total_line_concepts
  end
end
