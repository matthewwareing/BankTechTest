require 'transaction'
require 'timecop'

describe Transaction do
  it 'returns a hash' do
    transaction = Transaction.new
    expect(transaction.create).to be_a_kind_of(Hash)
  end

  it 'adds a date to the transaction' do
    Timecop.freeze
    transaction = Transaction.new
    expect(transaction.create[:transaction_date]).to eq Time.now
    Timecop.return
  end

  it 'holds the transaction amount' do
    transaction = Transaction.new(transaction_amount: 10)
    expect(transaction.create[:transaction_amount]).to eq 10
  end

  it 'stores the type of transaction' do
    transaction = Transaction.new(:transaction_type => :deposit, transaction_amount: 10, current_balance: 10)
    expect(transaction.create[:transaction_type]).to eq :deposit
  end

  it 'holds the new balance' do
    transaction = Transaction.new(current_balance: 30, transaction_amount: 10, :transaction_type => :withdraw).create
    expect(transaction[:new_account_balance]). to eq 20
  end
end
