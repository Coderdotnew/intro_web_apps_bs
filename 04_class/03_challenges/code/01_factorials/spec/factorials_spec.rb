require_relative './spec_helper'
require_relative '../factorials.rb'

describe '#factorial' do
  it 'returns the the factorial of the input number' do
    expect(factorial(0)).to eq(1)
  end
  it 'returns the the factorial of the input number' do
    expect(factorial(4)).to eq(24)
  end
  it 'returns the the factorial of the input number' do
    expect(factorial(8)).to eq(40320)
  end
end