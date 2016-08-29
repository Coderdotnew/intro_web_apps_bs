require_relative './spec_helper'
require_relative '../caesar_cipher.rb'


describe "#caesar_encrypt" do 
  it "converts a single word" do
    expect(caesar_encrypt(2, "cat")).to eq("ecv")
    expect(caesar_encrypt(7, "code")).to eq("jvkl")
  end

  it "loops around the alphabet if the shift goes beyond z" do
    expect(caesar_encrypt(5, "zigzag")).to eq("enlefl")
    expect(caesar_encrypt(10, "javascript")).to eq("tkfkcmbszd")
  end

  it "keeps letters capitalized in multiple word phrases" do
    expect(caesar_encrypt(4, "Phoenix AZ")).to eq("Tlsirmb ED")
  end
end