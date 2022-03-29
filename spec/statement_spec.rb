require './lib/statement'

describe Statement do

let(:deposit) do 
    double :deposit, date: '13/01/2023', credit: 500, debit: '', acc_balance: 500
end

let(:withdraw) do 
    double :withdraw, date: '14/01/2023', credit: '', debit: 400, acc_balance: 100
end

describe 'print' do
    it 'prints statement' do
        statement = [deposit, withdraw]
    expect do
      Statement.print(statement)
    end.to output("date || credit || debit || balance\n" + " 14/01/2023||  || 400 || 100\n" \
    " 13/01/2023|| 500 ||  || 500\n").to_stdout
end
end
end