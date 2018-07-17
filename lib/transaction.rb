require 'date'
class Transaction
  attr_reader :config, :transaction_amount, :transaction_type, :transaction_date
  def initialize(opts = {})
    @transaction_amount = opts[:transaction_amount]
    @transaction_type = opts[:transaction_type]
    @transaction_date = Time.now
  end
end
