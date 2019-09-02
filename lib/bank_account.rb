class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @balance = 1000
    @status = "open"
    @name = name
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def display_balance
    puts "Your balance is $#{self.balance}."
  end

  def valid?
    @status == "open" && @balance > 0
  end

  def close_account
    @status = "closed"

end
