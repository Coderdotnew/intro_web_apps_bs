require_relative './spec_helper'
require_relative '../prime.rb'

describe "prime?" do
  it 'returns true for prime numbers' do
    expect(prime?(2)).to eq(true)
    expect(prime?(13)).to eq(true)
    expect(prime?(23)).to eq(true)
    expect(prime?(105557)).to eq(true)
  end

  it 'returns false for non-prime numbers' do
    expect(prime?(6)).to eq(false)
    expect(prime?(42)).to eq(false)
    expect(prime?(101013)).to eq(false)
  end
end

describe "all_primes" do
  it 'returns all the prime number from 1 to the input number in an array' do
    expect(all_primes(10)).to eq([2, 3, 5, 7])
    expect(all_primes(16)).to eq([2, 3, 5, 7, 11, 13])
    expect(all_primes(100)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])
  end
end