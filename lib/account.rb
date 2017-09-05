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
    @statement.ledger << Banking.new(amount, '', @balance)
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
