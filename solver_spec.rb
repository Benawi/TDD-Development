require 'rspec'
require 'mock'

RSpec.describe "FizzBuzz" do

  let(:fizzbuzz) { mock() }

  it "returns a function" do
    expect(fizzbuzz).to receive(:call).and_return([1, 2, "Fizz"])
    expect(fizzbuzz.call).to be_a(Proc)
  end
end