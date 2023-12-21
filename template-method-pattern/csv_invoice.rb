# frozen_string_literal: true

require_relative './invoice'
require 'csv'

# Class that create a csv Invoice
class CsvInvoice < Invoice
  def create_invoice
    ::CSV.generate do |csv|
      csv << [@seller]

      @line_concepts.each do |line_concept|
        csv << line_concept.split(' ')
      end
    end
  end
end
