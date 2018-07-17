require 'transaction'
require 'timecop'

describe Transaction do

  it 'adds a date to the transaction' do
    Timecop.freeze
    transaction = Transaction.new(transaction_date: Time.now)
    expect(transaction.transaction_date).to eq Time.now
    Timecop.return
  end

  it 'holds the transaction amount' do
    transaction = Transaction.new(transaction_amount: 10)
    expect(transaction.transaction_amount).to eq 10
  end

  it 'stores the type of transaction' do
    transaction = Transaction.new(:transaction_type => :deposit, transaction_amount: 10)
    expect(transaction.transaction_type).to eq :deposit
  end

end
