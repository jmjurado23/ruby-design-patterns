# frozen_string_literal: true

require_relative '../composite_operation'
require_relative '../tax_operation'
require_relative '../discount_operation'

puts 'COMPOSITE PATTERN'
puts '-----'
tax21 = TaxOperation.new('add tax 21', 0.21)
discount10 = DiscountOperation.new('add discount 10', 0.10)
tax5 = TaxOperation.new('add tax 5', 0.05)

composite_wellcome = CompositeOperation.new('Wellcome Promotion')
composite_wellcome.add_operation(tax21)
composite_wellcome.add_operation(discount10)

puts 'Calculate amount for a 20€ item purchase with composite wellcome:'
puts "#{composite_wellcome.calculate(20)} €"

composite_wellcome_business = CompositeOperation.new('Wellcome Promotion for business')
composite_wellcome_business.add_operation(tax5)
composite_wellcome_business.add_operation(discount10)

puts 'Calculate amount for a 20€ item purchase with composite wellcome for business:'
puts "#{composite_wellcome_business.calculate(20)} €"
