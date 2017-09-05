require 'statement'
require 'banking'
# Bank Account Object
class Account
  attr_reader :balance, :statement

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.ledger << Banking.new(amount, 0, @balance)
  end

  def withdraw(amount)
    raise 'ERROR: you cannot have a negative balance' if minus?(amount)
    @balance -= amount
    @statement.ledger << Banking.new(0, amount, @balance)
  end

  private

  def minus?(amount)
    @balance - amount < 0
  end
end
