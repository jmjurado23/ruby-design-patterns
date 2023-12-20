# Decorator that add business to a method
class AddBusinessDecorator < Invoice
  def initialize(invoice)
    @component = invoice

    super(invoice.business, invoice.line_concepts)
  end

  def show_info_operation
    "#{@component.business} - #{@component.show_info_operation}"
  end
end
