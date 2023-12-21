# frozen_string_literal: true

require_relative './invoice'

# Class that create a plain text invoice
class PlainTextInvoice < Invoice
  def create_invoice
    text = ''
    text += "#{@seller}\n"
    @line_concepts.each do |line_concept|
      text += line_concept
    end
  end
end
