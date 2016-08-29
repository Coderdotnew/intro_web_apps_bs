require_relative './spec_helper'
require_relative '../awards_season.rb'

describe "best_acting" do
  it 'returns "Best actress" when input is equal to "Brie Larson"' do
    expect(best_acting("Brie Larson")).to eq("Best actress")
  end
  it 'returns "Best actor" when input is equal to "Leonardo DiCaprio"' do
    expect(best_acting("Leonardo DiCaprio")).to eq("Best actor")
  end
  it 'returns "Not nominated" when input is not an Oscar nominee for acting"' do
    expect(best_acting("Jennifer Lawrence")).to eq("Not nominated")
    expect(best_acting("Matt Damon")).to eq("Not nominated")
  end
end

describe "best_picture" do
  it 'returns "Winner" when input is equal to "Spotlight"' do
    expect(best_picture("Spotlight")).to eq("Winner")
  end
  
  it 'returns "Nominee" when input is equal to "The Martian"' do
    expect(best_picture("The Martian")).to eq("Nominee")
  end
  
  it 'returns "Nominee" when input is equal to "Room"' do
    expect(best_picture("Room")).to eq("Nominee")
  end
  
  it 'returns "Nominee" when input is equal to "Mad Max"' do
    expect(best_picture("Mad Max")).to eq("Nominee")
  end
  
  it 'returns "Nominee" when input is equal to "The Revenant"' do
    expect(best_picture("The Revenant")).to eq("Nominee")
  end
  
  it 'returns "Nominee" when input is equal to "Brooklyn"' do
    expect(best_picture("Brooklyn")).to eq("Nominee")
  end
  
  it 'returns "Nominee" when input is equal to "Bridge of Spies"' do
    expect(best_picture("Bridge of Spies")).to eq("Nominee")
  end
  
  it 'returns "Nominee" when input is equal to "The Big Short"' do
    expect(best_picture("The Big Short")).to eq("Nominee")
  end  
  
  it 'returns "Not nominated" when input is a movie not nominated in 2016"' do
    expect(best_picture("Ex-Machina")).to eq("Not nominated")
  end
end