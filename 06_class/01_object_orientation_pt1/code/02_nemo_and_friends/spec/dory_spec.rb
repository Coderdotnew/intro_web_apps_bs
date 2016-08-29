require_relative './spec_helper'
require_relative '../dory.rb'

describe "Blue_tang_fish" do
  let(:dory) {Blue_tang_fish.new} 
  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

  describe '::new' do 
    it 'is instantiated with a name set to Dory that can be changed and called' do
      expect(dory.name).to eq("Dory")
      expect(dory.name = "Dora").to eq("Dora")
    end

    it 'is instantiated with a location set to Searching for Nemo that can be called and changed' do
      expect(dory.location).to eq("Searching for Nemo")
      expect(dory.location = "P. Sherman 42 Wallaby Way").to eq("P. Sherman 42 Wallaby Way")
    end

    it 'is instantiated with a best friend, Marlin, that can be changed and called' do 
      expect(dory.best_friend).to eq("Marlin")
      expect(dory.best_friend = "Sharks").to eq("Sharks")
    end
  end

  describe '#speak' do 
    it "is able to speak" do
      expect($stdout).to receive(:puts).with("Just keep swimming!")
      dory.speak
    end
  end

end

