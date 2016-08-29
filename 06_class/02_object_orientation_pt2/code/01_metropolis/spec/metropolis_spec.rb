require_relative './spec_helper'
require_relative '../metropolis.rb'

describe "Metropolis" do
  let(:metropolis) { Metropolis.new }

   describe '::new' do 
    it "initializes with an array of villains and an array of heroes that can be called and changed" do
      expect(metropolis.villains).to eq(["Lex Luther", "General Zod", "Doomsday"])
      expect(metropolis.heroes).to eq(["Superman", "Wonder Woman", "Batman"])
    end
  end
  
  describe "#superman?" do
    it "returns a string with a crime and asks if Superman is in the sky" do
      expect(metropolis.superman?("bank robbery")).to eq("There is a bank robbery! It's a bird! It's a plane! It's Superman!")
    end
  end

  describe "#count_villains" do
    it "counts the villains and returns the correct string" do
      expect(metropolis.count_villains).to eq("Superman needs your help Wonder Woman and Batman!")
    end
  end

  describe "#add_hero" do
    it "adds a hero to the heroes array" do
      expect(metropolis.add_hero("Flash")).to eq(["Superman","Wonder Woman", "Batman", "Flash"])
    end
  end

  describe "#defeat_villain" do
    it "eliminate one of Metropolis's villains" do
      expect(metropolis.defeat_villain).to eq(["Lex Luther", "General Zod"])
      expect(metropolis.count_villains).to eq("Superman needs your help Wonder Woman!")
    end
  end

end