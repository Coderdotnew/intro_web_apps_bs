require_relative './spec_helper'
require_relative '../lib/04_fizzbuzz.rb'

describe 'FizzOrBuzz' do
  let(:num1) {FizzOrBuzz.new(3)} 
  let(:num2) {FizzOrBuzz.new(5)} 
  let(:num3) {FizzOrBuzz.new(15)} 
  let(:num4) {FizzOrBuzz.new(4)} 


  describe '::new' do 
    it 'instantiates with a number defined upon instantiation' do 
      expect(num1.num).to eq(3)
    end
  end

  describe "fizzbuzz" do
    it 'returns "Fizz" when the number is divisible by 3' do
      expect(num1.fizzbuzz).to eq("Fizz")
    end
    it 'returns "Buzz" when the number is divisible by 5' do
      expect(num2.fizzbuzz).to eq("Buzz")
    end
    it 'returns "FizzBuzz" when the number is divisible by 3 and 5' do
      expect(num3.fizzbuzz).to eq("FizzBuzz")
    end
    it 'returns the number when the number is not divisible by 3 or 5' do
      expect(num4.fizzbuzz).to eq(4)
    end
  end

end

