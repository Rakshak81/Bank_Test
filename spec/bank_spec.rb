require './lib/bank'

describe Bank do
  it 'responds to Deposit' do
    expect(subject).to respond_to :deposit
  end
end