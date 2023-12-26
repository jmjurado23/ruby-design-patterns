# frozen_string_literal: true

require_relative './invoice'
require_relative './invoice_operators_lib'
require_relative './invoice_to_pdf_lib'

# This facade help user to do an action over invoices simplifying the process
class AddInvoiceFacade
  def initialize(invoice1, invoice2)
    @invoice1 = invoice1
    @invoice2 = invoice2
  end

  def operate
    new_invoice = InvoiceOperatorsLib.add_invoices(@invoice1, @invoice2)
    InvoiceOperatorsLib.process_invoice(new_invoice)
    InvoiceOperatorsLib.calculate_total_invoice(new_invoice)
    InvoiceToPdfLib.to_pdf(new_invoice)
  end
end
