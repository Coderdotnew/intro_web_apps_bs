require_relative './spec_helper'
require_relative '../lib/05_euler.rb'

describe 'ProjectEuler' do
  let(:euler1) {ProjectEuler.new} 

  describe '#fizzbuzz_sum' do
    it 'returns the sum of every number divisible by 3 and 5 between 1 and 1000' do
      expect(euler1.fizzbuzz_sum).to eq(33165)
    end
  end

end

