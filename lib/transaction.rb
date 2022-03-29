require './lib/bank'

class Transaction
    attr_reader :date, :credit, :debit, :acc_balance

def initialize(date, credit, debit, acc_balance)
    @date = date
    @credit = credit
    @debit = debit
    @acc_balance = acc_balance

end

end