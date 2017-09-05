require 'statement'
require 'banking'
# Bank Account Object
class Account
  attr_reader :balance, :banking

  def initialize(banking = Banking.new)
    @balance = 0
    @banking = banking
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'ERROR: you cannot have a negative balance' if minus?(amount)
    @balance -= amount
  end

  private

  def minus?(amount)
    @balance - amount < 0
  end
end
