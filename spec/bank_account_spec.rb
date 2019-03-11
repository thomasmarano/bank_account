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


  describe '#withdraw' do
    it 'responds to withdraw' do
      expect(@bankaccount).to respond_to(:withdraw).with(1).argument
    end

    it 'lets you withdraw money from your account' do
      @balance = @bankaccount.balance
      @bankaccount.deposit(10)
      expect(@bankaccount.withdraw(10)).to eq(@balance)
    end

  end


end
