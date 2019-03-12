require 'bank_statement'
require 'bank_account'

describe BankStatement do
  let(:bankaccount) { double :bankaccount }

  before(:each) do
    @bankstatement = BankStatement.new
    @bankaccount = BankAccount.new
  end

  it 'initializes with a bank statement as an empty array' do
    expect(@bankstatement.transactions).to eq([])
  end

  describe '#add_to_statement' do
    it 'adds a deposit to bank statement with the current balance and date' do
      date = Time.now.strftime("%m/%d/%Y")
      @bankaccount.deposit(10)
      expect(@bankaccount.bank_statement.transactions).to include([date, 10, '', 10])
    end
  end

  describe '#createsStatement' do
    it 'creates the right format for your bank statement' do
      @bankaccount.deposit(10)
      @bankaccount.deposit(20)
      expect { @bankaccount.bank_statement.display_statement }.to output("date || credit || debit || balance\n03/12/2019 || 20 ||  || 30\n03/12/2019 || 10 ||  || 10\n").to_stdout
    end
  end
end
