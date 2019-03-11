require 'bank_account'


describe BankAccount do

  before(:each) do
      @bankaccount = BankAccount.new
  end


  it 'initializes with a balance of 0' do
    expect(@bankaccount.balance).to eq(0)
  end

  describe '#deposit' do
    it 'responds to deposit' do
      expect(@bankaccount).to respond_to(:deposit).with(1).argument
    end
    it 'lets you deposit money in your account' do
      expect(@bankaccount.deposit(10)).to eq(10)
    end
  end

  


end
