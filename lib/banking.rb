# Banking Transaction Object
class Banking
  attr_reader :time, :credit, :debit, :balance

  def initialize(credit, debit, balance)
    @balance = credit
    @debit = debit
    @credit = balance
    @time = Time.now.strftime("%d/%m/%Y")
  end
end
