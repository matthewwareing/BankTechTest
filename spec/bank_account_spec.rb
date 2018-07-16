require 'bank_account'
require 'timecop'

describe BankAccount, '.balance' do
  it 'prints an integer balance' do
    bank_account = BankAccount.new
    expect(bank_account.balance).to be_a_kind_of(Numeric)
  end

  it 'has a default bank balance of 0' do
    DEFAULT_BALANCE = 0
    bank_account = BankAccount.new
    expect(bank_account.balance).to eq DEFAULT_BALANCE
  end

  it 'has a configurable default balance' do
    STARTING_BALANCE = 20
    bank_account = BankAccount.new(starting_balance: STARTING_BALANCE)
    expect(bank_account.balance).to eq STARTING_BALANCE
  end    
end

describe BankAccount, '#deposit' do
  context 'when valid' do
    bank_account = BankAccount.new
    it { expect { bank_account.deposit(20) }.to change { bank_account.balance }.by(20) }
  end

  context 'when negative amount' do
    bank_account = BankAccount.new
    it { expect { bank_account.deposit(-50) }.to raise_exception("You cannot deposit a negative amount") }
  end
end

describe BankAccount, '#withdraw' do
  it 'when amount larger than balance' do
    bank_account = BankAccount.new
    expect { bank_account.withdraw(10) }.to raise_exception("You cannot withdraw more than your account balance")
  end
  it 'when negative amount' do
    bank_account = BankAccount.new
    expect { bank_account.withdraw(-10) }.to raise_exception("You cannot withdraw a negative amount")
  end
  it 'when valid' do
    starting_balance = 50
    bank_account = BankAccount.new(starting_balance: starting_balance)
    expect { bank_account.withdraw(10) }.to change { bank_account.balance }.by(-10)
  end
end

describe BankAccount, '#list_transactions' do
  it 'when valid' do
    bank_account = BankAccount.new
    expect(bank_account.list_transactions).to be_a_kind_of(Array)
  end

  it 'displays date of a transaction' do
    Timecop.freeze
    bank_account = BankAccount.new
    bank_account.deposit(10)
    expect(bank_account.list_transactions[0][:transaction_date]).to eq Time.now
    Timecop.return
  end

  it 'contains the transaction type' do

  end

  it 'contains the updated account balance' do

  end
end
