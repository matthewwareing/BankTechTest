require 'transaction_generator'

class BankAccount

  attr_reader :balance
  DEFAULT_BALANCE = 0
  MIN_ACCOUNT_DEPOSIT = 0
  def initialize(account_setup = {})
    @balance = DEFAULT_BALANCE
    @account_statement = account_setup.fetch(:account_statement, AccountStatement.new)
  end

  def deposit(amount)
    raise ArgumentError.new("You cannot deposit a negative amount") if amount < 0
    transaction = TransactionGenerator.new(transaction_amount: amount, 
        :transaction_type => :deposit, 
        current_balance: @balance).create
    @account_statement.add_transaction(transaction)
    @balance = @account_statement.current_balance()
  end
    
  def withdraw(amount)
    raise ArgumentError.new("You cannot withdraw a negative amount") if amount < 0
    raise ArgumentError.new("You cannot withdraw more than your account balance") if amount > @account_statement.current_balance()
    transaction = TransactionGenerator.new(transaction_amount: amount, 
      :transaction_type => :withdraw, 
      current_balance: @balance).create
    @account_statement.add_transaction(transaction)
    @balance = @account_statement.current_balance()
  end

  def display_balance
    @account_statement.current_balance()
  end

end
