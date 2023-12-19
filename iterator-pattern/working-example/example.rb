# frozen_string_literal: true

require_relative '../invoice'
require_relative '../line_concept'

puts 'ITERATOR PATTERN'
puts '-----'
puts 'Create invoice:'
invoice = Invoice.new

puts 'Add line_concepts'
line_concept1 = LineConcept.new('computer', 1, 200)
line_concept2 = LineConcept.new('keyboard', 1, 30)
line_concept3 = LineConcept.new('sdd', 2, 100)

invoice.add_line_concept(line_concept1)
invoice.add_line_concept(line_concept2)
invoice.add_line_concept(line_concept3)

invoice.each do |lc|
  puts "Line concept #{lc.total_price}"
end

total_price = invoice.sum(&:total_price)
puts "Line concept total: #{total_price}"

filtered_elements = invoice.filter { |lc| lc.total_price > 100 }
puts "Line concept with filter total_price > 100: #{filtered_elements.map(&:concept).join(', ')}"
