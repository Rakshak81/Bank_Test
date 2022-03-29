require './lib/transaction'
require './lib/statement'

class Bank

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
    
  end

  def withdraw(date, amount)
    raise 'not enough funds' if @balance < amount
    @balance -= amount
    @transactions << Transaction.new(date, '', amount, @balance)
  end

  def deposit(date, amount)
    @balance += amount
    @transactions << Transaction.new(date, amount, '', @balance)
  end

end