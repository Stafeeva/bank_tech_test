require 'account'

describe Account do

  context "new_account" do
    it "should be instatiated with 0 balance" do
      expect(subject.balance).to eq 0
    end
  end
end
