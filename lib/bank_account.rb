class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  attr_writer

  def initialize(name)
    @name=name
    @balance = 1000
    @status = "open"
  end

  def deposit
    
  end

  def display_balance
    self.balance
  end

end
