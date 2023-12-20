# frozen_string_literal: true

require_relative '../invoice'
require_relative '../line_concept'
require_relative '../item'
require_relative '../item_to_line_concept_adapter'

puts 'ADDAPTER PATTERN'
puts '-----'
puts 'Create invoice:'
item1 = Item.new('Mouse')
item2 = Item.new('Motherboard')
line_concept1 = LineConcept.new('Computer', 3)
line_concept2 = LineConcept.new('Keyboard', 2)

invoice = Invoice.new(
  [
    line_concept1,
    line_concept2,
    ItemToLineConceptAdapter.new(item1),
    ItemToLineConceptAdapter.new(item2)
  ]
)

puts 'Adapter has converted item to a line concept with resume method:'
invoice.resume_line_concepts
