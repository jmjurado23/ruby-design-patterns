# frozen_string_literal: true

require_relative '../invoice'
require_relative '../total_observer'
require_relative '../storage_observer'

business = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']

puts 'OBSERVER PATTERN'
puts '-----'
puts 'Create invoice:'
invoice = Invoice.new(business, line_concepts)

puts '-----'
puts 'Listening changes on add_line_concepts method:'
invoice.add_observer(TotalObserver.new)
invoice.add_observer(StorageObserver.new)
invoice.add_line_concept('5 mainboards')
