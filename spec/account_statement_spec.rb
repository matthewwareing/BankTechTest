require 'account_statement'

describe AccountStatement do
  it 'stores a list of withdrawals and deposits' do
    account_statement = AccountStatement.new
    expect(account_statement.transactions).to be_kind_of(Array)
  end

  it 'appends new transactions to the array' do
    account_statement = AccountStatement.new
    account_statement.add_transaction({})
    expect(account_statement.transactions).to eq [{}]
  end
    
end
