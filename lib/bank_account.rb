class BankAccount

    attr_reader :balance
    DEFAULT_BALANCE = 0

    def initialize(account_setup = {})
        @balance = account_setup.fetch(:starting_balance, DEFAULT_BALANCE)
    end
end