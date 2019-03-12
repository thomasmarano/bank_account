require_relative 'bank_statement.rb'

class BankAccount

    attr_reader :balance, :bankStatement

    def initialize
        @balance = 0
        @bankStatement = BankStatement.new
    end

    def deposit(amount)
        @balance += amount
        @bankStatement.addToStatement(amount, '', @balance)
    end

    def withdraw(amount)
        @balance -= amount
        @bankStatement.addToStatement('', amount, @balance)
    end

end
