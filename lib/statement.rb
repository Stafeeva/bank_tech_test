class Statement

  def initialize(transactions)
    @transactions = transactions
  end

  def print_statement
    statement = ''
    @transactions.each do |transaction|
      statement += "#{transaction[:date].strftime('%d/%m/%Y')} || #{sprintf '%.2f', transaction[:credit] if transaction[:credit]} || #{sprintf '%.2f', transaction[:debit] if transaction[:debit]} || #{sprintf '%.2f', transaction[:balance]}\n"
    end
    "date || credit || debit || balance\n" + statement
  end

end
