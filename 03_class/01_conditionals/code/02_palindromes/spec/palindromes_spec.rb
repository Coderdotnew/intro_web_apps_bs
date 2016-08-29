require_relative './spec_helper'
require_relative '../palindromes.rb'

describe "#palindrome?" do 
  
  it "return the expected string if the input IS a palindrome" do
    expect(palindrome?("racecar")).to eq("It's a palindrome!")
  end

  it "return the expected string if the input is NOT a palindrome" do
    expect(palindrome?("ruby is awesome")).to eq("Not a palindrome.")
  end

end

