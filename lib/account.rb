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

  def print_statement
    statement = ''
    @transactions.each do |transaction|
      statement += "#{transaction[:date]} || #{sprintf '%.2f', transaction[:credit] if transaction[:credit]} || #{sprintf '%.2f', transaction[:debit] if transaction[:debit]} || #{sprintf '%.2f', transaction[:balance]}\n"
    end
    "date || credit || debit || balance\n" + statement
  end

end
