class AccountStatement

  attr_reader :transactions
  def initialize
    @transactions = []
  end

  def add_transaction(transaction)
    @transactions << transaction 
  end  

  def current_balance
    sum = 0
    @transactions.each do |transaction|
      if transaction[:transaction_type] == :deposit
        sum += transaction[:transaction_amount]
      elsif transaction[:transaction_type] == :withdraw
        sum -= transaction[:transaction_amount]
      end
    end
    sum
  end

end

# Does it have one responsibility?
# to hold the list of transactions !AND! add to them
