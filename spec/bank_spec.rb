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
    bank.deposit("11/12/2020", 500)
    expect(bank.balance).to eq 500
  end
end

describe 'withdraw' do
  it "Balance decreases by withdrawal amount" do
    bank = Bank.new
    bank.deposit("11/12/2020", 500)
    bank.withdraw("12/12/2020", 100)
    expect(bank.balance).to eq 400
  end

  it "will raise error if not enough funds" do
    bank = Bank.new
    bank.deposit("11/12/2020", 500)
    expect { bank.withdraw("12/12/2020", 600)}. to raise_error('not enough funds')
  end
end

describe 'transactions' do
  it "shows no if transactions" do
    bank = Bank.new
    bank.deposit("11/12/2020", 500)
    bank.withdraw("12/12/2020", 100)
    expect(bank.transactions.length).to eq(2)
  end
end