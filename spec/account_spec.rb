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
end
