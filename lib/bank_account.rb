require_relative 'bank_statement.rb'

class BankAccount

    attr_reader :balance, :bankStatement

    def initialize
        @balance = 0
        @bankStatement = BankStatement.new
    end

    def deposit(amount)
        @balance += amount
        @bankStatement.addToStatement(amount, 0, @balance)
    end

    def withdraw(amount)
        @balance -= amount
        @bankStatement.addToStatement(0, amount, @balance)
    end

end
