# frozen_string_literal: true

require_relative '../invoice'
require_relative '../change_status_command'
require_relative '../send_email_command'

puts 'COMMAND PATTERN'
puts '-----'
puts 'Create invoice:'
invoice = Invoice.new

puts 'Add commands to invoice when paid'
invoice.add_command_on_paid(ChangeStatusCommand.new)
invoice.add_command_on_paid(SendEmailCommand.new)

puts 'when invoice is paid:'

invoice.on_paid

puts 'Email is sended'
puts "Invoice status #{invoice.status}"
