require 'printer'
require 'transaction'
require 'timecop'

describe Printer, '.column_titles' do
  it 'returns a set of column titles' do
    expect(Printer.column_titles).to eq "Date | Deposit | Withdrawal | Balance"
  end
end

describe Printer, '.row' do
  it 'formats column data into row' do
    Timecop.freeze
    transaction = Transaction.new(date: Time.now, amount: 20)
    expect(Printer.row(transaction)).to eq "#{Time.now.strftime('%d-%m-%Y')} | 20 | current balance"
  end
end
