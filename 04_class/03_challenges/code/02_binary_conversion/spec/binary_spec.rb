require_relative './spec_helper'
require_relative '../binary.rb'

describe "#decimal_to_binary" do
  it "returns correct binary if given a positive integer" do
    expect(decimal_to_binary(3)).to eq(11)
    expect(decimal_to_binary(11)).to eq(1011)
    expect(decimal_to_binary(25)).to eq(11001)
    expect(decimal_to_binary(651)).to eq(1010001011)
  end
end

describe "#binary_to_decimal" do
  it "returns correct decimal if given a binary number" do
    expect(binary_to_decimal(100)).to eq(4)
    expect(binary_to_decimal(1111011)).to eq(123)
    expect(binary_to_decimal(1010)).to eq(10)
    expect(binary_to_decimal(1000010001011)).to eq(4235)
  end
end

