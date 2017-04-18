require 'statement'

describe Statement do
  context "print statement" do
    it "should display all the transactions" do
      date = Time.now
      statement = Statement.new([{date: date, credit: 1000, balance: 1000 }])
      expect(statement.print_statement).to eq "date || credit || debit || balance\n#{date.strftime('%d/%m/%Y')} || 1000.00 ||  || 1000.00\n"
    end
  end
end
