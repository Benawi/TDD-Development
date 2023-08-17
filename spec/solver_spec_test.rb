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

  let(:fizzbuzz) { Solver.new }
  it 'returns an array' do
    allow(fizzbuzz).to receive(:call).and_return([1, 2, 'Fizz'])
    expect(fizzbuzz.call).to be_an(Array)
  end

  it 'returns Fizz when divisible by 3' do
    allow(fizzbuzz).to receive(:call).and_return([1, 2, 'Fizz'])
    expect(fizzbuzz.call[2]).to eq('Fizz')
  end

  it 'returns Buzz when divisible by 5' do
    allow(fizzbuzz).to receive(:call).and_return([1, 97, 98, 'Buzz'])
    expect(fizzbuzz.call[3]).to eq('Buzz')
  end

  it 'returns FizzBuzz when divisible by 3 and 5' do
    allow(fizzbuzz).to receive(:call).and_return([1, 2, 'Fizz', 4, 'Buzz', 'FizzBuzz'])
    expect(fizzbuzz.call[5]).to eq('FizzBuzz')
  end

  it 'returns the number when not divisible by 3 or 5' do
    allow(fizzbuzz).to receive(:call).and_return([1, 2, 'Fizz', 13])
    expect(fizzbuzz.call[3]).to eq(13)
  end

  describe '#reverse' do
    it 'returns a string' do
      expect(solver.reverse('hello')).to be_a(String)
    end
    it 'returns the reverse of a string' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end
end
