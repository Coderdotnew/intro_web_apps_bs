require_relative './spec_helper'
require_relative '../harry_potter.rb'

describe 'House' do
  let(:gryffindor) {House.new("Gryffindor", "lion", "Godric Gryffindor")}
  let(:slytherin) {House.new("Slytherin", "snake", "Salazar Slytherin")}
  let(:hufflepuff) {House.new("Hufflepuff", "badger", "Helga Hufflepuff")}
  let(:ravenclaw) {House.new("Ravenclaw", "raven", "Rowena Ravenclaw")}

  describe '::new' do 
    it 'instantiates with a name set upon initialization that can be called but not changed' do 
      expect(gryffindor.name).to eq("Gryffindor")
      expect { gryffindor.name = "Gryffith" }.to raise_error(StandardError)
    end

    it 'instantiates with a house animal set upon initialization that can be called but not changed' do 
      expect(gryffindor.animal).to eq("lion")
      expect { gryffindor.animal = "tiger" }.to raise_error(StandardError)
    end

    it 'instantiates with a founder set upon initialization that can be called but not changed' do 
      expect(gryffindor.founder).to eq("Godric Gryffindor")
      expect { gryffindor.founder = "Harry Potter" }.to raise_error(StandardError)
    end

    it 'initializes with a default location set to Hogwarts' do
      expect(slytherin.location).to eq("Hogwarts")
    end

    it 'has a most_famous_member attribute that can be called and defined outside of initialization' do
      slytherin.most_famous_member = "Tom Riddle"
      expect(slytherin.most_famous_member).to eq("Tom Riddle")
    end
  end

  describe '#characteristic' do
    it 'has a characteristic attribute that is specific to each house depending on the name it is initialized with' do
      expect(ravenclaw.characteristic).to eq("Intelligence, knowledge, and wit")
      expect(hufflepuff.characteristic).to eq("Hard work, patience, loyalty")
      expect(gryffindor.characteristic).to eq("Bravery, daring, chivalry")
      expect(slytherin.characteristic).to eq("Ambition, cunning, resourcefulness")
    end
  end

end
