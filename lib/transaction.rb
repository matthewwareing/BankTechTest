require 'date'
class Transaction
  attr_reader :config, :amount, :type, :date
  def initialize(opts = {})
    @amount = opts[:amount]
    @type = opts[:type]
    @date = Time.now
  end
end

# class Transaction
#     DATE_FORMAT = '%d-%m-%Y'

#     def initialize(date)
#         @date = date
#     end

#     def date
#         @date.strftime(DATE_FORMAT)
#     end
# end


# def self.format data
#   data[:transaction_date] = transaction.date
#   data[:current_balance] = "£#{data[:current_balance]}"
# end

