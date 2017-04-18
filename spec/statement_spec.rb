require 'statement'

describe Statement do
  context "print statement" do
    it "should display all the transactions" do
      statement = Statement.new([{date: "18/04/2017", credit: 1000, balance: 1000 }])
      expect(statement.print_statement).to eq "date || credit || debit || balance\n18/04/2017 || 1000.00 ||  || 1000.00\n"
    end
  end
end
