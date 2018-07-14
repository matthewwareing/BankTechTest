class BankAccount

    attr_reader :balance
    DEFAULT_BALANCE = 0
    MIN_ACCOUNT_BALANCE = 0
    def initialize(account_setup = {})
        @balance = account_setup.fetch(:starting_balance, DEFAULT_BALANCE)
    end

    def deposit(amount)
        raise ArgumentError.new("You cannot deposit a negative amount") if amount < MIN_ACCOUNT_BALANCE
        @balance += amount
    end
end