class Transfer

  attr_accessor :sender, :receiver, :amount, :status


  def initialize (sender, receiver, amount)
    @status = "pending"
    @amount = amount
    @sender = sender
    @receiver = receiver
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid? && sender.balance >= @amount && @status = "pending"
      sender.balance -= @amount
      receiver.balance += @amount
      @status = "complete"
    elsif sender.balance < @amount
      puts "Transaction rejected. Please check your account balance."
    elsif !valid?
      puts "Transaction rejected. Please check your account balance."
    end
  end




end
