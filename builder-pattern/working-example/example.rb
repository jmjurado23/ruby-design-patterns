# frozen_string_literal: true

require_relative '../invoice_builder'
require_relative '../director'

puts 'BUILDER PATTERN'
puts '-----'
puts 'Create invoice with builder:'
invoice_builder = InvoiceBuilder.new
invoice_director = Director.new
invoice_director.builder = invoice_builder

puts 'Create invoice with director method empty invoice'
puts invoice_director.build_empty_invoice

puts '----'
puts 'Create invoice with director method for demo invoice'
puts invoice_director.build_demo_invoice
