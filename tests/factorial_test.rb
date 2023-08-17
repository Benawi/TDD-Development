require 'rspec'

RSpec.describe Solver do
  let(:solver) { Solver.new}

  describe '#factorial' do
    context 'When factorial-like method is mocked' do
      before do
        allow(solver).to receive(:factorial).with(0).and_return(1)
      end
    end
  end
end

