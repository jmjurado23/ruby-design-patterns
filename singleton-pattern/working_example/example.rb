require_relative '../invoice'

seller = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'SINGLETON PATTERN'
puts '-----'
puts 'Create invoices:'

Invoice.new(seller, line_concepts)
puts Invoice.show_total_line_concepts.to_s

Invoice.new(seller, line_concepts)
puts Invoice.show_total_line_concepts.to_s

Invoice.new(seller, line_concepts)
puts Invoice.show_total_line_concepts.to_s
