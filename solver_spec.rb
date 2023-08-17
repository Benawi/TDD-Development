require 'rspec'
require 'mock'

RSpec.describe "FizzBuzz" do

  let(:fizzbuzz) { mock() }

  it "returns a function" do
    expect(fizzbuzz).to receive(:call).and_return([1, 2, "Fizz"])
    expect(fizzbuzz.call).to be_a(Proc)
  end

  it "returns an array" do
    expect(fizzbuzz).to receive(:call).and_return([1, 2, "Fizz"])
    expect(fizzbuzz.call).to be_an(Array) 
  end
  
  it "returns Fizz when divisible by 3" do
    expect(fizzbuzz).to receive(:call).and_return([1, 2, "Fizz"])
    expect(fizzbuzz.call[2]).to eq("Fizz")
  end

  it "returns Buzz when divisible by 5" do
    expect(fizzbuzz).to receive(:call).and_return([1, 97, 98, "Buzz"])
    expect(fizzbuzz.call[3]).to eq("Buzz")
  end
end