# Decorator that add seller to a method
class AddSellerDecorator < Invoice
  def initialize(invoice)
    @component = invoice

    super(invoice.seller, invoice.line_concepts)
  end

  def show_info_operation
    "#{@component.seller} - #{@component.show_info_operation}"
  end
end
