require 'transaction_generator'

class BankAccount
  attr_reader :balance
  
  def initialize(account_setup = {})
    @account_statement = account_setup.fetch(:account_statement, AccountStatement.new)
  end

  def deposit(amount)
    raise ArgumentError.new("You cannot deposit a negative amount") if amount < 0
    transaction = TransactionGenerator.new(transaction_amount: amount, 
        :transaction_type => :deposit, 
        current_balance: @account_statement.current_balance()).create
    @account_statement.add_transaction(transaction)
  end
    
  def withdraw(amount)
    raise ArgumentError.new("You cannot withdraw a negative amount") if amount < 0
    raise ArgumentError.new("You cannot withdraw more than your account balance") if amount > @account_statement.current_balance()
    transaction = TransactionGenerator.new(transaction_amount: amount, 
      :transaction_type => :withdraw, 
      current_balance: @account_statement.current_balance()).create
    @account_statement.add_transaction(transaction)
  end

  def balance
    @account_statement.current_balance()
  end

end
