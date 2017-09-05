require './lib/account'

account = Account.new

account.deposit(10)
account.withdraw(10)
puts account.balance
