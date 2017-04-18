class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, date = Time.now)
    @balance += amount
    @transactions << {date: date , credit: amount, balance: balance}
  end

  def withdraw(amount, date = Time.now)
    @balance -= amount
    @transactions << {date: date, debit: amount, balance: balance}
  end

end
