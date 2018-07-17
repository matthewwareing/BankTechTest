require 'account_statement'

describe AccountStatement do
  it 'stores a list of withdrawals and deposits' do
    account_statement = AccountStatement.new
    expect(account_statement.transactions).to be_kind_of(Array)
  end

  # check out ed test to fix this
  # it 'appends new transactions to the array' do
  #   Timecop.freeze
  #   account_statement = AccountStatement.new
  #   account_statement.add_transaction(transaction_amount: 10, 
  #     :transaction_type => :deposit)
  #   expect(account_statement.transactions).to eq [{
  #     :transaction_date => Time.now,
  #     :transaction_amount => 10,
  #     :transaction_type => :deposit
  #   }]
  #   Timecop.return
  # end

  # describe AccountStatement, '#list_transactions' do
  #   it 'when valid' do
  #     bank_account = BankAccount.new
  #     expect(bank_account.list_transactions).to be_a_kind_of(Array)
  #   end
  
  #   it 'displays date of a transaction' do
  #     Timecop.freeze
  #     bank_account = BankAccount.new
  #     bank_account.deposit(10)
  #     expect(bank_account.list_transactions[0][:transaction_date]).to eq Time.now
  #     Timecop.return
  #   end
  
  #   it 'contains the transaction type' do
  #     bank_account = BankAccount.new
  #     bank_account.deposit(10)
  #     expect(bank_account.list_transactions[0][:transaction_type]).to eq :deposit
  #   end
  
  #   it 'contains the updated account balance' do
  #     bank_account = BankAccount.new
  #     bank_account.deposit(10)
  #     expect(bank_account.list_transactions[0][:new_account_balance]).to eq 10
  #   end
  # end

end
