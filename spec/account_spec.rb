require 'account'

describe Account do
  subject(:account) { described_class.new }

  context 'New account' do
    describe '#initialize' do
      it 'should have an opening balance of zero' do
        expect(account.balance).to eq 0
      end
    end
  end

  context 'Account balance change' do
    describe '#deposit' do
      it 'can increase the balance when a deposit is made' do
        account.deposit(1)
        expect(account.balance).to eq 1
      end
    end
  end
end
