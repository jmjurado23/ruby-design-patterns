require_relative './factory'
require_relative './invoice'

# Factory of invoices that return invoices for demos purposes
class DemoInvoiceFactory < Factory
  def self.create(_params, number)
    invoices = []
    number.times do
      n_line_concepts = rand(1..4)

      invoices << Invoice.new(
        ['Company1', 'Company2', 'Other Company'].sample,
        n_line_concepts.times.map do |n|
          "concept #{n}"
        end
      )
    end
    invoices
  end
end
