class BankStatement

  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def add_to_statement(deposit, withdrawal, balance)
    @transactions.push([Time.now.strftime("%m/%d/%Y"), deposit, withdrawal, balance])
  end

  def display_statement
    account = "date || credit || debit || balance\n"
    @transactions.reverse_each do |transaction|
      account << "#{transaction[0]} || #{transaction[1]} || #{transaction[2]} || #{transaction[3]}\n"
    end
    puts account
  end
end
