class Printer

    attr_reader :column_titles
    def self.column_titles
        "Date | Deposit | Withdrawal | Balance"
    end

    def self.row data
        data.join(" | ")
    end

    def self.format data
        data[0] = data[0].strftime('%d-%m-%Y')
        data[-1] = "£#{data[-1]}"
        
    end
end