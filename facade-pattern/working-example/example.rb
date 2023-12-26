# frozen_string_literal: true

require_relative '../add_invoices_facade'
require_relative '../invoice'

seller = 'Computer enterprise'
buyer = 'User'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'FACADE PATTERN'
puts '-----'
invoice1 = Invoice.new(seller, buyer, line_concepts)
invoice2 = Invoice.new(seller, buyer, line_concepts)
facade = AddInvoiceFacade.new(invoice1, invoice2)

facade.operate
