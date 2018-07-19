require_relative 'transaction'
require_relative 'printer'
require_relative 'account_statement'

class BankAccount
  attr_reader :balance
  
  def initialize(account_setup = {})
    @account_statement = account_setup.fetch(:account_statement, AccountStatement.new)
    @printer = account_setup.fetch(:printer, Printer)
  end

  def deposit(amount)
    raise ArgumentError.new("You cannot deposit a negative amount") if amount < 0
    add_transaction(amount: amount, :type => :deposit)
  end
    
  def withdraw(amount)
    raise ArgumentError.new("You cannot withdraw a negative amount") if amount < 0
    raise ArgumentError.new("You cannot withdraw more than your account balance") if amount > balance
    add_transaction(amount: amount, :type => :withdraw)
  end
  
  def balance
    @account_statement.current_balance()
  end

  def display_statement
    @printer.display_statement(@account_statement.transactions)
  end

  private

  def add_transaction(params)
    @account_statement.add_transaction(
      amount: params[:amount], 
      :type => params[:type],
      date: params.fetch(:time, Time.now)
      )
  end

end
