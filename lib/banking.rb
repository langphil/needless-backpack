# Banking Transaction Object
class Banking
  attr_reader :time, :credit, :debit, :balance

  def initialize(credit = 0, debit = 0, balance = 0)
    @balance = credit
    @debit = debit
    @credit = balance
    @time = Time.now.strftime('%d/%m/%Y')
  end
end
