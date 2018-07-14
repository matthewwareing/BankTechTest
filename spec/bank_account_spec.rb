describe BankAccount do
    it 'prints a balance' do
        bank_account = BankAccount.new
        expect(bank_account.balance).to be_a_kind_of(Numeric)
    end
end