require 'transaction'
require 'timecop'

describe Transaction do
  
  it 'adds a formatted date to the transaction' do
    DATE_FORMAT = '%d-%m-%Y'
    Timecop.freeze
    transaction = Transaction.new(date: Time.now)
    expect(transaction.date).to eq Time.now.strftime(DATE_FORMAT)
    Timecop.return
  end

  it 'holds the transaction amount' do
    transaction = Transaction.new(amount: 10)
    expect(transaction.amount).to eq 10
  end

  it 'stores the type of transaction' do
    transaction = Transaction.new(:type => :deposit, amount: 10)
    expect(transaction.type).to eq :deposit
  end

end
