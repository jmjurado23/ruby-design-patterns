require_relative './factory'
require_relative './invoice'

# A factory for invoice that create an invoice with minimun information
class SimpleInvoiceFactory < Factory
  def self.create(params, number)
    invoices = []
    number.times do
      invoices << Invoice.new(
        params[:business] || 'Sample company',
        params[:line_concepts] || []
      )
    end
    invoices
  end
end
