require_relative './command'

# Command that changes the status of a invoice
class ChangeStatusCommand < Command
  def run(invoice)
    invoice.change_status('paid')
  end
end
