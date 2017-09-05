require './lib/account'

account = Account.new
puts account.balance

account.deposit(10)
account.withdraw(5)
puts account.balance
