require 'print'

describe Print do
  subject(:print) { described_class.new }

  context 'New string' do
    describe '#initialize' do
      it 'has an empty sting' do
        expect(print.output).to eq ''
      end
    end
  end
end
