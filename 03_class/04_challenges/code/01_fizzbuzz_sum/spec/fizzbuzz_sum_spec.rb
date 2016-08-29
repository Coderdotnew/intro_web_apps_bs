require_relative './spec_helper'
require_relative '../fizzbuzz_sum.rb'

describe '#fizzbuzz_sum' do
  it 'returns the sum of every number divisible by 3 and 5 between 1 and 1000' do
    expect(fizzbuzz_sum).to eq(33165)
  end
end