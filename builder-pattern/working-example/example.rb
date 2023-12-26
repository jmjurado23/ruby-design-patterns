# frozen_string_literal: true

require_relative '../invoice_builder'

puts 'BUILDER PATTERN'
puts '-----'
puts 'Create invoice with builder:'
invoice_builder = InvoiceBuilder.new

invoice_builder.add_buyer('Buyer data')
invoice_builder.add_seller('Seller data')
invoice_builder.add_line_concept('Computer', 2)
invoice_builder.add_line_concept('Keyboard')

puts 'Invoice data:'
invoice = invoice_builder.invoice
puts "Buyer: #{invoice.buyer}"
puts "Seller: #{invoice.seller}"
puts "Line concepts: #{invoice.line_concepts}"
