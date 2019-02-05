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
    if !sender.valid?
      "Rejected"
    else
      self.sender -= amount
      self.receiver += amount
      self.amount = 0
    end
  end

  def reverse_transfer
  end
end
