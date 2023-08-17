require_relative '../solver'
require 'rspec'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 for factorial of 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for positive numbers' do
      expect(solver.factorial(5)).to eq(120)
    end

    it 'raises an exception for negative numbers' do
      expect { solver.factorial(-2) }.to raise_error(RuntimeError, 'Factorial is not defined for negative numbers')
    end
  end
end
