require_relative './spec_helper'
require_relative '../math_conditionals.rb'

describe "#less_than" do 
  it "return the expected string if the input is not less than 100" do
    expect(how_big(100)).to eq("That's a large number.")
  end
  it "return the expected string if the input is less than 100" do
    expect(how_big(99)).to eq("That's a small number.")
  end
end

describe "#even?" do 
  it "return true if even" do
    expect(even?(100)).to eq(true)
  end
  it "return false if not even" do
    expect(even?(99)).to eq(false)
  end
end

describe "#odd?" do 
  it "return true if odd" do
    expect(odd?(99)).to eq(true)
  end
  it "return false if not odd" do
    expect(odd?(100)).to eq(false)
  end
end

describe "#zero?" do 
  it "return true if input is 0" do
    expect(zero?(0)).to eq(true)
  end
  it "return false if input is not 0" do
    expect(zero?(1)).to eq(false)
  end
end