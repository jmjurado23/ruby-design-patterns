# Component class that have the method that decorators have to implement
class Invoice
  attr_reader :seller, :line_concepts

  def initialize(seller, line_concepts)
    @seller = seller
    @line_concepts = line_concepts
  end

  def show_info_operation
    raise 'Not implemented method'
  end
end
