class AccountStatement

    attr_reader :transactions
    def initialize
        @transactions = []
    end

    def add_transaction(transaction)
        @transactions << transaction 
    end
    
end

# Does it have one responsibility?
# to hold the list of transactions !AND! add to them