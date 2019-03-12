class BankStatement

  attr_reader :transactions


    def initialize
        @transactions = []
    end


    def addToStatement(deposit, withdrawal, balance)
        @transactions.push([Time.now.strftime("%m/%d/%Y"), deposit, withdrawal, balance])
    end


end
