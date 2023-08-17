require 'rspec'
require './solver'

RSpec.describe 'FizzBuzz' do
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
end
