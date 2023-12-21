# frozen_string_literal: true

require_relative '../invoice'
require_relative '../csv_invoice_creator'
require_relative '../plain_text_invoice_creator'

seller = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'STRATEGY PATTERN'
puts '-----'
puts 'CSV Invoice:'
csv_invoice = Invoice.new(CsvInvoiceCreator.new)
csv_invoice.add_seller(seller)
csv_invoice.add_line_concepts(line_concepts)
puts csv_invoice.generate

puts '-----'
puts 'Plain Text Invoice:'
plain_text_invoice = Invoice.new(PlainTextInvoiceCreator.new)
plain_text_invoice.add_seller(seller)
plain_text_invoice.add_line_concepts(line_concepts)
puts plain_text_invoice.generate
