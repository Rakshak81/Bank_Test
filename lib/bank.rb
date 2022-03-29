class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def withdraw(amount)
    raise 'not enough funds' if @balance < amount
    @balance -= amount
  end

  def deposit(amount)
    
    @balance += amount
  end

end