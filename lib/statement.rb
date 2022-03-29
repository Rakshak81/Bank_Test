require './lib/bank'
require './lib/transaction'

class Statement
    def self.print(statement_transactions)
        puts 'date || credit || debit || balance'
        statement_transactions.reverse_each do |statement|
            puts " #{statement.date}|| #{statement.credit} || #{statement.debit} || #{statement.acc_balance}"
        end
    end
end