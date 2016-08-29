require_relative './spec_helper'
require_relative '../subway_ride.rb'

describe '#subway_map' do
  it 'returns the size of the subway map' do
    expect(subway_map(5,5)).to eq("The map is 25 square inches.")
  end
end

describe '#ride_time' do
  it 'returns the total ride time for the subway ride' do
    expect(ride_time(150, 3)).to eq("The trip will take 450 seconds.")
  end
end

describe '#total_tip' do
  it 'returns the total tip using multiplcation' do
    expect(total_tip(3, 1, 3, 2)).to eq("Total tip is 88 cents.")
  end
end

describe '#grump' do
  it 'returns a string argument in all caps' do
    expect(grump("stop dancing")).to eq("STOP DANCING!")
  end
end

describe '#rides_left' do
  it 'returns the number of rides left on your card balance' do
    expect(rides_left(27)).to eq("You have 9 rides left.")
  end
end