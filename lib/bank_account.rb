require_relative 'bank_statement.rb'

class BankAccount

  attr_reader :balance, :bank_statement

  def initialize(bank_statement = BankStatement.new)
    @balance = 0
    @bank_statement = bank_statement
  end

  def deposit(amount)
    @balance += amount
    @bank_statement.add_to_statement(amount, '', @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @bank_statement.add_to_statement('', amount, @balance)
  end
end
