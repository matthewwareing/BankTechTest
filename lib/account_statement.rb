class AccountStatement

  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def add_transaction(transaction)
    transaction = TransactionGenerator.new(transaction_amount: transaction[:transaction_amount], 
      :transaction_type => transaction[:transaction_type], 
      current_balance: current_balance()).create
    @transactions << transaction
  end  

  def current_balance
    sum = 0
    @transactions.each do |transaction|
      case transaction[:transaction_type]
        when :deposit 
          sum += transaction[:transaction_amount]
        when :withdraw
          sum -= transaction[:transaction_amount]
      end
    end
    sum
  end
end

# Does it have one responsibility?
# to hold the list of transactions !AND! add to them
