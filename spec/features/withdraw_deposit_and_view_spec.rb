require 'bank_account'
require 'bank_statement'

describe BankAccount do

  before(:each) do
    @bankaccount = BankAccount.new
  end

  it 'lets you deposit, withdraw and view statement' do
    @bankaccount.deposit(10)
    @bankaccount.withdraw(5)
    expect { @bankaccount.bank_statement.display_statement }.to output { 'date || credit || debit || balance\n03/12/2019 ||  || 5 || 5\n03/12/2019 || 10 ||  || 10' }.to_stdout
  end
end
