require_relative './spec_helper'
require_relative '../avengers.rb'

describe "Avenger" do
  let(:iron_man) {Avenger.new("Iron Man", "Tony Stark", "Robotics")}  
  let(:hulk) {Avenger.new("Hulk", "Bruce Banner", "Super strength")}  
  let(:thor) {Avenger.new("Thor", "Thor Odison", "Is a god")}  
  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

  describe '::new' do 
    it 'is instantiated with a name that must be defined upon intialization' do
      expect(iron_man.name).to eq("Iron Man")
      expect(hulk.name).to eq("Hulk")
      expect(thor.name).to eq("Thor")
    end

    it 'is instantiated with a real_identity that must be defined upon initialization' do
      expect(iron_man.real_identity).to eq("Tony Stark")
      expect(hulk.real_identity).to eq("Bruce Banner")
      expect(thor.real_identity).to eq("Thor Odison")
    end

    it 'is instantiated with a power that must be defined upon initialization' do
      expect(iron_man.power).to eq("Robotics")
      expect(hulk.power).to eq("Super strength")
      expect(thor.power).to eq("Is a god")
    end

    it 'name, real_identity, and power cannot be changed' do
      expect { iron_man.name = "Captain America" }.to raise_error(StandardError)
      expect { hulk.real_identity = "Wade Wilson" }.to raise_error(StandardError)
      expect { thor.power = "Shoots web" }.to raise_error(StandardError)
    end

    it 'is initialized with a shield_level of 100 that can be called but NOT changed' do
      expect(iron_man.shield_level).to eq(100)
      expect(hulk.shield_level).to eq(100)
      expect { iron_man.shield_level = 90 }.to raise_error(StandardError)
    end
  end

  describe "#attacked" do 
    it 'lowers the shield_level by 10 when the attacked method is called on the Avenger object' do
      expect(thor.attacked).to eq(90)
    end
  end

end

