require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  context 'New statement' do
    describe '#initialize' do
      it 'should have an empty ledger hash' do
        expect(statement.ledger).to eq([])
      end
    end
  end
end
