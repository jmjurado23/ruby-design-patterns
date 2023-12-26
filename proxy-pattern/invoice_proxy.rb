# frozen_string_literal: true

# Proxy over Invoice to provide functionality before access Invoice
# It can be permissions or logics executed before access real Invoice
class InvoiceProxy
  def initialize(invoice)
    @subject = invoice
  end

  def total_amount
    puts '-logic to be defined in proxy'
    @subject.total_amount
  end
end
