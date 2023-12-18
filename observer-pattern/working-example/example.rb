require_relative '../invoice'
require_relative '../total_observer'
require_relative '../storage_observer'

business = 'Computer enterprise'
line_concepts = ['1 computer', '3 mouse', '5 keyboards']
observers = [TotalObserver.new, StorageObserver.new]

puts 'OBSERVER PATTERN'
puts '-----'
puts 'Create invoice and notify observers about changes:'
invoice = Invoice.new(business, line_concepts, observers)

puts '-----'
puts 'Listening changes on add_line_concepts method:'
invoice.add_line_concept('5 mainboards')
