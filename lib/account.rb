class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << {date: "#{Time.now.strftime('%d/%m/%Y')}", credit: amount, balance: balance}
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << {date: "#{Time.now.strftime('%d/%m/%Y')}", debit: amount, balance: balance}
  end

end
