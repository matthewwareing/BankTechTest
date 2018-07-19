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
    Timecop.return
  end
end

# Not sure how to do this
# describe Printer, '.display_statement' do
#   it 'returns a formatted statement' do
#     Timecop.freeze
#     data = [{date: Time.now, amount: 50}]
#     expect(Printer.display_statement(data)).to eq ""
#   end
# end