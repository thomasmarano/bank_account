require 'bank_statement'
require 'bank_account'

describe BankStatement do

  before(:each) do
    @bankstatement = BankStatement.new
    @bankaccount = BankAccount.new
  end


  it 'initializes with a bank statement as an empty array' do
    expect(@bankstatement.transactions).to eq([])
  end


  describe '#addToStatement' do
    it 'adds a deposit to bank statement with the current balance and date' do
      @bankaccount.deposit(10)
      # @bankaccount.addToStatement(10, 0)
      date = Time.now.strftime("%m/%d/%Y")
      expect(@bankaccount.bankStatement.transactions).to include([date, 10, 0, 10])
    end
  end


end
