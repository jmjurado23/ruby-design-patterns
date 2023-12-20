# Class that use the command that is provided
class Invoice
  attr_reader :status

  def initialize
    @status = 'pending'
    @commands = []
  end

  def add_command_on_paid(command)
    @commands << command
  end

  def change_status(status)
    @status = status
  end

  def on_paid
    @commands.each { |command| command.run(self) }
  end
end
