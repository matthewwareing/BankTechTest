class Printer

  attr_reader :column_titles

  def self.display_statement(account_data)
    statement = [column_titles]
    account_data.each do |format_row|
      statement << row(format_row)
    end
    statement
  end

  def self.column_titles
    "Date | Deposit | Withdrawal | Balance"
  end

  def self.row transaction
    "#{transaction.date} | #{transaction.amount} | current balance"
  end

end
