require 'rspec'

RSpec.describe Solver do
  let(:solver) { Solver.new}

  describe '#factorial' do
    context 'When factorial-like method is mocked' do
      before do
        allow(solver).to receive(:factorial).with(0).and_return(1)
        allow(solver).to receive(:factorial).with(1).and_return(1)
        allow(solver).to receive(:factorial).with(2).and_return(2)
        allow(solver).to receive(:factorial).with(3).and_return(6)
      end
    end
  end
end

