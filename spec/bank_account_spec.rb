require 'bank_account'

describe BankAccount do
    it 'prints an integer balance' do
        bank_account = BankAccount.new
        expect(bank_account.balance).to be_a_kind_of(Numeric)
    end
end