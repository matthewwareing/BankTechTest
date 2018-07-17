require 'printer'

# describe Printer, '.column_titles' do
#     it 'returns a set of column titles' do
#         expect(Printer.column_titles).to eq "Date | Deposit | Withdrawal | Balance"
#     end
# end

# describe Printer, '.row' do
#     it 'formats column data into row' do
#             sampleData = {
#         :transaction_date => Time.now,
#         :transaction_amount => 10,
#         :transaction_type => :deposit,
#         :new_account_balance => 10
#         }
#         expect(Printer.row(sampleData)).to eq "12/12/18 | 200 | - | £200"
#     end
# end

# describe Printer, '.format' do
#     it 'formats date and money' do
#         sampleData = [Date.new, "200", "-", "200"]
#         expect(Printer.format(sampleData))
#     end
# end