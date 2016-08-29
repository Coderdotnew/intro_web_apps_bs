require_relative './spec_helper'
require_relative '../square.rb'

describe "#square_and_return_original" do 
  it "squares each item in the array and returns the original array" do
    nums = [1,2,3,4,5]
    expect(square_and_return_original(nums)).to eq([1,2,3,4,5])
  end
end

describe "#square_and_return_manipulated" do 
  it 'squares each item in the original array and returns the manipulated array using collect' do
    nums = [1,2,3,4,5]
    expect(square_and_return_manipulated(nums)).to eq([1,4,9,16,25])
  end
end

describe "#square_and_print_each_manipulated" do 
  it 'squares each item in the original array and prints a new array with manipulated values' do
    nums = [1,2,3,4,5]
    expect($stdout).to receive(:puts).with([1,4,9,16,25]) 
    square_and_print_each_manipulated(nums)
  end
end


