require_relative './spec_helper'
require_relative '../crush.rb'

describe "Turtle" do
  let(:crush) {Turtle.new} 
  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

  describe '::new' do
    it 'is instantiated with a name set to Crush that can be called but not changed' do
      expect(crush.name).to eq("Crush")
      expect { crush.name = "Crush" }.to raise_error(StandardError)
    end

    it 'is instantiated with a mood set to relaxed that can be called and changed' do
      expect(crush.mood).to eq("relaxed")
      expect(crush.mood = "chill").to eq("chill")
    end

    it 'is instantiated with an age set to 150 that can be called and changed' do 
      expect(crush.age).to eq(150)
      expect(crush.age = 200).to eq(200)
    end
  end

  describe '#speak' do
    it "is able to speak" do
      expect($stdout).to receive(:puts).with("Righteous")
      crush.speak
    end
  end

end

