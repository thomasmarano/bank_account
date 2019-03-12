class BankAccount

    attr_reader :balance, :bankStatement

    def initialize
        @balance = 0
        @bankStatement = []
    end

    def deposit(amount)
        @balance += amount
        addToStatement(amount, 0)
    end

    def withdraw(amount)
        @balance -= amount
        addToStatement(0, amount)
    end

    def addToStatement(deposit, withdrawal)
        @bankStatement.push([Time.now.strftime("%m/%d/%Y"), deposit, withdrawal, @balance])
    end

end
