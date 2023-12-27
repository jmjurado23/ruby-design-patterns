# Director for construct elements
class Director
  attr_accessor :builder

  def initialize
    @builder = nil
  end

  def build_empty_invoice
    @builder.invoice
  end

  def build_demo_invoice
    @builder.add_buyer
    @builder.add_seller
    @builder.add_line_concept
    @builder.invoice
  end
end
