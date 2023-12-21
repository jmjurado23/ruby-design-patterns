# frozen_string_literal: true

require_relative '../invoice'
require_relative '../invoice_proxy'

seller = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'PROXY PATTERN'
puts '-----'
puts 'Invoice:'
invoice = Invoice.new(seller, line_concepts)
invoice.total_amount

puts '-----'
puts 'InvoiceProxy:'
invoice_proxy = InvoiceProxy.new(invoice)
invoice_proxy.total_amount
