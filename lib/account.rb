# Bank Account Object
class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'ERROR: you cannot have a negative balance' if @balance <= 0
    @balance -= amount
  end
end
