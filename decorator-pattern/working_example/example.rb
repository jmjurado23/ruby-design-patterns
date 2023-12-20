# frozen_string_literal: true

require_relative '../invoice'
require_relative '../simple_invoice'
require_relative '../add_business_decorator'
require_relative '../add_total_decorator'

business = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'DECORATOR PATTERN'
puts '-----'
simple_invoice = SimpleInvoice.new(business, line_concepts)
puts simple_invoice.show_info_operation

puts '-----'
puts 'With add total decorator:'
with_total_decorator = AddTotalDecorator.new(simple_invoice)
puts with_total_decorator.show_info_operation
puts 'With add business decorator:'
with_business_decorator = AddBusinessDecorator.new(simple_invoice)
puts with_business_decorator.show_info_operation
