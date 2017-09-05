require './lib/account'
require './lib/banking'

banking = Banking.new
account = Account.new(banking)
p account

account.deposit(10)
account.withdraw(10)

p account.balance
