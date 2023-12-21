# frozen_string_literal: true

require_relative '../invoice'
require_relative '../csv_invoice'
require_relative '../plain_text_invoice'

seller = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'TEMPLATE METHOD PATTERN'
puts '-----'
puts 'CSV Invoice:'
csv_invoice = CsvInvoice.new
csv_invoice.add_seller(seller)
csv_invoice.add_line_concepts(line_concepts)
puts csv_invoice.generate

puts '-----'
puts 'Plain Text Invoice:'
plain_text_invoice = PlainTextInvoice.new
plain_text_invoice.add_seller(seller)
plain_text_invoice.add_line_concepts(line_concepts)
puts plain_text_invoice.generate
