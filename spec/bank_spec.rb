require './lib/bank'

describe Bank do
  it 'responds to Deposit' do
    expect(subject).to respond_to :deposit
  end
end

describe 'balance' do
  it 'Balance starts at 0' do
    bank = Bank.new
    expect(bank.balance).to eq 0
  end
end