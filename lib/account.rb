# Bank Account Object
class Account

  def initialize()
    @balance = 0
  end

  def balance()
    @balance
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
