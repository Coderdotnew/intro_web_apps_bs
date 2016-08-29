require_relative './spec_helper'
require_relative '../fizzbuzz.rb'

describe "fizzbuzz" do
  it 'returns "Fizz" when the number is divisible by 3' do
    expect(fizzbuzz(3)).to eq("Fizz")
  end
  it 'returns "Buzz" when the number is divisible by 5' do
    expect(fizzbuzz(5)).to eq("Buzz")
  end
  it 'returns "FizzBuzz" when the number is divisible by 3 and 5' do
    expect(fizzbuzz(15)).to eq("FizzBuzz")
  end
  it 'returns the number when the number is not divisible by 3 or 5' do
    expect(fizzbuzz(4)).to eq(4)
  end
end