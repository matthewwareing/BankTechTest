class BankAccount

    attr_reader :balance
    DEFAULT_BALANCE = 0
    MIN_ACCOUNT_DEPOSIT = 0
    def initialize(account_setup = {})
        @balance = account_setup.fetch(:starting_balance, DEFAULT_BALANCE)
    end

    def deposit(amount)
        raise ArgumentError.new("You cannot deposit a negative amount") if amount < 0
        @balance += amount
    end
    
    def withdraw(amount)
        raise ArgumentError.new("You cannot withdraw a negative amount") if amount < 0
        raise ArgumentError.new("You cannot withdraw more than your account balance") if amount > @balance
        @balance -= amount
    end
end