# Component class that have the method that decorators have to implement
class Invoice
  attr_reader :business, :line_concepts

  def initialize(business, line_concepts)
    @business = business
    @line_concepts = line_concepts
  end

  def show_info_operation
    raise 'Not implemented method'
  end
end
