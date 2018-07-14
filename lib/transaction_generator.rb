require 'date'
class TransactionGenerator
    attr_reader :config
    def initialize(opts = {})
        @config = opts
        @transaction_amount = config[:transaction_amount]
        @transaction_type = config[:transaction_type]
        @current_balance = config[:current_balance]
    end

    def create
        {transaction_date: Time.now, transaction_amount: @config[:transaction_amount], transaction_type: @transaction_type,
         new_account_balance: new_balance()}
    end

    def new_balance
        return @current_balance - @transaction_amount if @transaction_type == :withdraw
    end
end