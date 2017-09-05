require './lib/account'
require './lib/banking'
require './lib/statement'

statement = Statement.new
account = Account.new(statement)

account.deposit(10)
account.withdraw(10)
p account
