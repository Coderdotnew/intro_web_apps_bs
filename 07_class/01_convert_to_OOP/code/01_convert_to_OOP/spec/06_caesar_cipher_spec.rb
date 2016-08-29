require_relative './spec_helper'
require_relative '../lib/06_caesar_cipher.rb'

describe 'CaesarCipher' do
  let(:message1) {CaesarCipher.new(2, "cat")} 
  let(:message2) {CaesarCipher.new(8, "crab")} 
  let(:message3) {CaesarCipher.new(12, "zip")} 
  let(:message4) {CaesarCipher.new(9, "broccoli")} 
  let(:message5) {CaesarCipher.new(11, "New York")} 

  describe '::new' do 
    it 'instantiates with a shift number value and a string message upon initialization' do 
      expect(message1.shift).to eq(2)
      expect(message2.message).to eq("crab")
    end
  end

  describe "#encrypt" do 
    it "converts a single word" do
      expect(message1.encrypt).to eq("ecv")
      expect(message2.encrypt).to eq("kzij")
    end

    it "loops around the alphabet if the shift goes beyond z" do
      expect(message3.encrypt).to eq("lub")
      expect(message4.encrypt).to eq("kaxllxur")
    end

    it "keeps letters capitalized in multiple word phrases" do
      expect(message5.encrypt).to eq("Yph Jzcv")
    end
  end

  # remove comments below to complete the decrypt challenge
  
  # let(:message6) {CaesarCipher.new(2, "ecv")} 
  # let(:message7) {CaesarCipher.new(8, "kzij")} 
  # let(:message8) {CaesarCipher.new(12, "lub")} 
  # let(:message9) {CaesarCipher.new(9, "kaxllxur")} 
  # let(:message10) {CaesarCipher.new(11, "Yph Jzcv")} 

  # describe "#decrypt"
  #   it "converts a single word message" do
  #     expect(message6.decrypt.to eq("cat")
  #     expect(message7.decrypt).to eq("crab")
  #   end

  #   it "loops around the alphabet if the shift goes beyond z" do
  #     expect(message8.decrypt).to eq("zip")
  #     expect(message9.decrypt).to eq("broccoli")
  #   end

  #   it "keeps letters capitalized" do
  #     expect(message10.decrypt).to eq("New York")
  #   end
  # end

end

