require_relative '../invoice'

business = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'SINGLETON PATTERN'
puts '-----'
puts 'Create invoices:'

Invoice.new(business, line_concepts)
puts Invoice.show_total_line_concepts.to_s

Invoice.new(business, line_concepts)
puts Invoice.show_total_line_concepts.to_s

Invoice.new(business, line_concepts)
puts Invoice.show_total_line_concepts.to_s
