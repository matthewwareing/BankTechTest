require 'pry'

class Printer

  attr_reader :column_titles

  def self.display_statement(account_data)
    return column_titles
      account_data.each do |format_row|
          self.row(format_row)
      end
  end

  def self.column_titles
    "Date | Deposit | Withdrawal | Balance"
  end

  def self.row transaction
    "#{transaction.date} | #{transaction.amount} | current balance"
  end

end
