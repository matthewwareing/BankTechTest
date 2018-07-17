require 'printer'

describe Printer, '.column_titles' do
    it 'returns a set of column titles' do
        expect(Printer.column_titles).to eq "Date | Deposit | Withdrawal | Balance"
    end
end