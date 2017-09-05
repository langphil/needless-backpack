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

  context 'Account balance' do
    before(:each) do
      account.deposit(1)
    end

    describe '#deposit' do
      it 'can increase the balance when a deposit is made' do
        expect(account.balance).to eq 1
      end
    end

    describe '#withdrawal' do
      it 'can increase the balance when a deposit is made' do
        account.withdraw(1)
        expect(account.balance).to eq 0
      end
    end

    describe '#negative balance' do
      it 'cannot go into a negative balance' do
        account.withdraw(1)
        expect { account.withdraw(1) }.to raise_error('ERROR: you cannot have a negative balance')
      end
    end
  end
end
