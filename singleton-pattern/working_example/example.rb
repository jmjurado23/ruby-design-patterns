# frozen_string_literal: true

require_relative '../invoice'

seller = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'SINGLETON PATTERN'
puts '-----'
puts 'Create invoices:'

Invoice.new(seller, line_concepts)
puts Invoice.show_total_line_concepts

Invoice.new(seller, line_concepts)
puts Invoice.show_total_line_concepts

Invoice.new(seller, line_concepts)
puts Invoice.show_total_line_concepts
