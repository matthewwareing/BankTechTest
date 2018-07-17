require 'date'
class Transaction
  DATE_FORMAT = '%d-%m-%Y'
  attr_reader :config, :amount, :type, :date

  def initialize(opts = {})
    @amount = opts[:amount]
    @type = opts[:type]
    @date = opts[:date]
  end

  def date
    @date.strftime(DATE_FORMAT)
  end

end
