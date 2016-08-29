require_relative './spec_helper'
require_relative '../recipes.rb'

$taco_ingredients = {
  :tortilla => "3",
  :shredded_chicken => "2 cups",
  :salsa => "1 cup",
  :shredded_cheddar_cheese => "3 cups"
}

describe '#ingredients' do
  it "returns a hash of all 4 ingredients and amounts" do
    expect(ingredients($taco_ingredients)).to eq({
      :tortilla => "3",
      :shredded_chicken => "2 cups",
      :salsa => "1 cup",
      :shredded_cheddar_cheese => "3 cups"
    })
  end
end

describe '#amount_of_cheese' do
  it 'returns 3 cups' do
    expect(amount_of_cheese($taco_ingredients)).to eq("3 cups")
  end
end

describe '#ingredients_and_amounts' do
  it 'prints all ingredients and amounts' do
    expect($stdout).to receive(:puts).with("tortilla 3")
    expect($stdout).to receive(:puts).with("shredded_chicken 2 cups")
    expect($stdout).to receive(:puts).with("salsa 1 cup")
    expect($stdout).to receive(:puts).with("shredded_cheddar_cheese 3 cups")
    ingredients_and_amounts($taco_ingredients)
  end
end

describe '#ingredients' do
  it 'prints all ingredients' do
    expect($stdout).to receive(:puts).with("tortilla")
    expect($stdout).to receive(:puts).with("shredded_chicken")
    expect($stdout).to receive(:puts).with("salsa")
    expect($stdout).to receive(:puts).with("shredded_cheddar_cheese")
    ingredients($taco_ingredients)
  end
end

describe '#amounts' do
  it 'prints all amounts' do
    expect($stdout).to receive(:puts).with("3")
    expect($stdout).to receive(:puts).with("2 cups")
    expect($stdout).to receive(:puts).with("1 cup")
    expect($stdout).to receive(:puts).with("3 cups")
    amounts($taco_ingredients)
  end
end

describe '#total_count' do
  it 'returns the total number of ingredients and amounts' do
    expect(total_count($taco_ingredients)).to eq(8)
  end
end

describe '#total_cups' do
  it 'returns the total number of ingredients and amounts' do
    expect(total_cups($taco_ingredients)).to eq(9)
  end
end
  
