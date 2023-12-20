require_relative './command'

# Command that changes the status of a invoice
class SendEmailCommand < Command
  def run(invoice)
    puts "-- sending email with invoice #{invoice} --"
  end
end
