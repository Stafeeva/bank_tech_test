require 'account'

describe Account do

  context "new account" do
    it "should be instatiated with 0 balance" do
      expect(subject.balance).to eq 0
    end
  end

  context "deposit" do
    it "should add an amount to an account" do
      expect{subject.deposit(1000)}.to change{subject.balance}.by(1000)
    end
  end

  context "withdrawal" do
    it "should withdraw an amount from an account" do
      subject.deposit(1500)
      expect{subject.withdraw(300)}.to change{subject.balance}.by(-300)
    end
  end

  context "transactions" do
    it "should store the history of all transactions" do
      subject.deposit(1000)
      expect(subject.transactions).to eq [{date: "18/04/2017", credit: 1000, balance: 1000 }]
      subject.withdraw(300)
      expect(subject.transactions).to eq [{date: "18/04/2017", credit: 1000, balance: 1000 }, {date: '18/04/2017', debit: 300, balance: 700 }]
    end
  end

end
