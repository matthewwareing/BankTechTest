require 'transaction_generator'

describe TransactionGenerator do
    it 'returns a hash' do
        transaction = TransactionGenerator.new
        expect(transaction.config).to be_a_kind_of(Hash)
    end
end