class Printer

    attr_reader :column_titles
    def self.column_titles
        "Date | Deposit | Withdrawal | Balance"
    end

    # Time.new.strftime('%d-%m-%Y')
end