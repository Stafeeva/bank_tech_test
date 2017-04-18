class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << {credit: amount, balance: balance}
  end

  def withdraw(amount)
    @balance -= amount
  end

end
