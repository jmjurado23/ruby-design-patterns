# frozen_string_literal: true

require_relative '../invoice'
require_relative '../demo_invoice_factory'
require_relative '../simple_invoice_factory'

seller = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'FACTORY PATTERN'
puts '-----'
puts 'Factory that create demo invoices:'
invoices = DemoInvoiceFactory.create(nil, 3)
invoices.each do |invoice|
  puts "#{invoice.seller} - #{invoice.line_concepts}"
end

puts '-----'
puts 'Factory that create simple invoices:'
invoices = SimpleInvoiceFactory.create({
                                         seller: seller,
                                         line_concepts: line_concepts
                                       }, 2)

invoices.each do |invoice|
  puts "#{invoice.seller} - #{invoice.line_concepts}"
end
