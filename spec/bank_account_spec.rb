require 'bank_account'

describe BankAccount do
    it 'prints an integer balance' do
        bank_account = BankAccount.new
        expect(bank_account.balance).to be_a_kind_of(Numeric)
    end

    it 'has a default bank balance of 0' do
        DEFAULT_BALANCE = 0
        bank_account = BankAccount.new
        expect(bank_account.balance).to eq DEFAULT_BALANCE
    end

    it 'has a configurable default balance' do
        STARTING_BALANCE = 20
        bank_account = BankAccount.new(starting_balance: STARTING_BALANCE)
        expect(bank_account.balance).to eq STARTING_BALANCE
    end

    it 'has the ability to deposit funds' do
        bank_account = BankAccount.new
        expect{bank_account.deposit(20)}.to change{bank_account.balance}.by(20)
    end

    it 'cannot deposit negative amounts' do
        bank_account = BankAccount.new
        expect{bank_account.deposit(-50)}.to raise_exception("You cannot deposit a negative amount")
    end
end