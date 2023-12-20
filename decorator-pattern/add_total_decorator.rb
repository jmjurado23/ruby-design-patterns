# Decorator that add business to a method
class AddTotalDecorator < Invoice
  def initialize(invoice)
    @component = invoice

    super(invoice.business, invoice.line_concepts)
  end

  def show_info_operation
    "#{@component.show_info_operation} - Total elems: #{@component.line_concepts.count}"
  end
end
