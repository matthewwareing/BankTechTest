# require 'printer'
# require 'transaction'
# require 'account_statement'
require 'bank_account'

describe 'a user can deposit and withdraw funds' do
    it 'can print updated statement' do

        beautiful_set_of_transactions = "
        \nDate | Deposit | Withdrawal | Balance\n
        \n19-07-2018 | 100 | 100\n
        \n19-07-2018 | 40 | 60\n
        \n19-07-2018 | 3 | 63\n"
        
        bank_account = BankAccount.new
        bank_account.deposit(100)
        bank_account.withdraw(40)
        bank_account.deposit(3)
        expect{bank_account.display_statement}.to output(beautiful_set_of_transactions).to_stdout
    end
end