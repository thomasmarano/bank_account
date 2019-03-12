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
      date = Time.now.strftime("%m/%d/%Y")
      expect(@bankaccount.bankStatement.transactions).to include([date, 10, '', 10])
    end
  end

  describe '#createsStatement' do
    it 'creates the right format for your bank statement' do
      @bankaccount.deposit(10)
      @bankaccount.deposit(20)
      # @bankaccount.withdraw(5)
      # @bankaccount.bankStatement.displayStatement
      expect {@bankaccount.bankStatement.displayStatement}.to output("date || credit || debit || balance\n03/12/2019 || 20 ||  || 30\n03/12/2019 || 10 ||  || 10\n").to_stdout
    end
  end


end
