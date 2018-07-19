class Printer

  attr_reader :column_titles

  def self.display_statement(account_data)
    puts column_titles
    account_data.each do |format_row|
      puts row(format_row)
    end
  end
  
  def self.column_titles
    "Date | Deposit | Withdrawal | Balance"
  end

  def self.row transaction
    "#{transaction.date} | #{transaction.amount} | #{transaction.running_total}"
  end

end
