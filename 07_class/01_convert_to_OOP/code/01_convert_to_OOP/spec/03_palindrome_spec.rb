require_relative './spec_helper'
require_relative '../lib/03_palindrome.rb'

describe 'Palindrome' do
  let(:string1) {Palindrome.new("racecar")} 
  let(:string2) {Palindrome.new("ruby")} 

  describe '::new' do 
    it 'instantiates with a string defined upon instantiation' do 
      expect(string1.string).to eq("racecar")
    end
  end

  describe '#pal_or_not' do 
    it 'return the expected string if the input IS a palindrome' do
      expect(string1.pal_or_not).to eq("It's a palindrome!")
    end

    it 'return the expected string if the input is NOT a palindrome' do
      expect(string2.pal_or_not).to eq("Not a palindrome.")
    end
  end

end