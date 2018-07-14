require 'date'
class TransactionGenerator
    attr_reader :config, :transaction_amount, :transaction_type, :current_balance
    def initialize(opts = {})
        @transaction_amount = opts[:transaction_amount]
        @transaction_type = opts[:transaction_type]
        @current_balance = opts[:current_balance]
    end

    def create
        {transaction_date: Time.now, transaction_amount: @transaction_amount, transaction_type: @transaction_type,
         new_account_balance: new_balance()}
    end

    def new_balance
        return @current_balance - @transaction_amount if @transaction_type == :withdraw
        return @current_balance + @transaction_amount if @transaction_type == :deposit
    end
end