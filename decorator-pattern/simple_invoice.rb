# frozen_string_literal: true

# Define a concrete implementation of component invoice
class SimpleInvoice < Invoice
  def show_info_operation
    "line_concepts: #{@line_concepts.join(',')}"
  end
end
