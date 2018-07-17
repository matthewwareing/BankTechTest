class Printer

    attr_reader :column_titles

    def self.display_statement(account_data)
        return self.column_titles
        # account_data.each do |format_row|
        #     # self.row(format_row)
            
        # end
    end

    def self.column_titles
        "Date | Deposit | Withdrawal | Balance"
    end

    def self.row data
        puts "#{data[:transaction_date]} | #{data[:transaction_amount]} | #{data[:current_balance]}"
    end

end
