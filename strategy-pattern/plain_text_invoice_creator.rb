# frozen_string_literal: true

require_relative './invoice_creator'

# Strategy for create plain text invoice
class PlainTextInvoiceCreator < InvoiceCreator
  def create(invoice)
    text = ''
    text += "#{invoice.business}\n"
    invoice.line_concepts.each do |line_concept|
      text += line_concept
    end
  end
end
