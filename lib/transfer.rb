class Transfer
  # your code here
  attr_accessor :receiver, :sender, :amount, :status
  attr_reader
  attr_writer

  def initialize(sender, receiver, amount)
    @sender=sender
    @receiver=receiver
    @status = "pending"
    @amount=amount
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    if self.sender.valid? 
      "Transaction rejected. Please check your account balance."
    else
      self.sender.balance -= amount
      self.receiver.balance += amount
      self.amount = 0
      self.status = "complete"
    end
  end
end
