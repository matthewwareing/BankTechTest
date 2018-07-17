class AccountStatement

  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def add_transaction(transaction)
    transaction = Transaction.new(
      amount: transaction[:amount], 
      :type => transaction[:type],
      date: transaction[:date]
      )
    @transactions << transaction
  end

  def current_balance
    sum = 0
    @transactions.each do |transaction|
      case transaction.type
        when :deposit 
          sum += transaction.amount
        when :withdraw
          sum -= transaction.amount
      end
    end
    sum
  end
end
