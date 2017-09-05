require 'banking'

describe Banking do
  subject(:banking) { described_class.new }
  let(:timeNow) { Time.now.strftime("%d/%m/%Y") }
  let(:bank) { double("Bank", :balance => 0,
                              :credit => 10,
                              :debit => 20,
                              :time => timeNow
                              ) }

  context 'New Transaction' do
    describe '#initialize' do

      it 'should have a balance' do
        expect(bank.balance).to eq 0
      end

      it 'should have a credit amount' do
        expect(bank.credit).to eq 10
      end

      it 'should have a debit amount' do
        expect(bank.debit).to eq 20
      end

      it 'should record a time of the interaction' do
        expect(bank.time).to eq timeNow
      end
    end
  end
end
