require_relative './invoice_creator'
require 'csv'

# Strategy for create csv invoice
class CsvInvoiceCreator < InvoiceCreator
  def create(invoice)
    ::CSV.generate do |csv|
      csv << [invoice.business]

      invoice.line_concepts.each do |line_concept|
        csv << line_concept.split(' ')
      end
    end
  end
end
