require_relative './spec_helper'
require_relative '../pop_n_push.rb'

describe "#number_pop" do 
  it "returns the numbers array without the last item" do
    nums = [1,2,3,4,5]
    expect(number_pop(nums)).to eq([1,2,3,4])
  end
end

describe "#number_push" do 
  it "returns the numbers array with the next chronological number pushed to the end of the array" do
    nums = [1,2,3,4,5]
    expect(number_push(nums)).to eq([1,2,3,4,5,6])
  end
end

describe "#number_pop_last_2_items" do 
  it "returns the numbers array without the last 2 items" do
    nums = [1,2,3,4,5]
    expect(number_pop_last_2_items(nums)).to eq([1,2,3])
  end
end

describe "#push_in_numbers" do 
  it "returns the array in order with the correct numbers pushed in to match the pattern" do
    nums = [5,10,15,25,30,35,45]
    expect(push_in_numbers(nums)).to eq([5,10,15,20,25,30,35,40,45])
  end
end

