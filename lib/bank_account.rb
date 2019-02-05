class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  attr_writer

  def initialize(name)
    @name=name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
  end

  def display_balance
    "Yout balance is $#{self.balance}."
  end

end
