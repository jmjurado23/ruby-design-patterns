# frozen_string_literal: true

require_relative '../invoice'
require_relative '../simple_invoice'
require_relative '../add_seller_decorator'
require_relative '../add_total_decorator'

seller = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'DECORATOR PATTERN'
puts '-----'
simple_invoice = SimpleInvoice.new(seller, line_concepts)
puts simple_invoice.show_info_operation

puts '-----'
puts 'With add total decorator:'
with_total_decorator = AddTotalDecorator.new(simple_invoice)
puts with_total_decorator.show_info_operation
puts 'With add seller decorator:'
with_seller_decorator = AddSellerDecorator.new(simple_invoice)
puts with_seller_decorator.show_info_operation
