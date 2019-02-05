class Transfer
  # your code here
  attr_accessor :balance, :status
  attr_reader :name
  attr_writer

  def initialize(sender, receiver, amount)
    @sender=sender
    @receiver=receiver
    @status = "pending"
    @amount=amount
  end
end
