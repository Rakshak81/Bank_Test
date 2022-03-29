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

describe 'deposit' do
  it 'Balance increases by deposit amount' do
    bank = Bank.new
    bank.deposit(500)
    expect(bank.balance).to eq 500
  end
end

describe 'withdraw' do
  it "Balance decreases by withdrawal amount" do
    bank = Bank.new
    bank.deposit(200)
    bank.withdraw(100)
    expect(bank.balance).to eq 100
  end

  it "will raise error if not enough funds" do
    bank = Bank.new
    bank.deposit(200)
    expect { bank.withdraw(500)}. to raise_error('not enough funds')
  end
end