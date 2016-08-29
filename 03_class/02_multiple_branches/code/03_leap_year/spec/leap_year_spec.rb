require_relative './spec_helper'
require_relative '../leap_year.rb'

describe "leap_year" do
  it 'returns "Leap year!" when divisible by 4' do
    expect(leap_year(2004)).to eq("Leap year!")
    expect(leap_year(1984)).to eq("Leap year!")
  end

  it 'returns "Leap year!" when divisible by 400' do
    expect(leap_year(2000)).to eq("Leap year!")
    expect(leap_year(1600)).to eq("Leap year!")
  end

  it 'returns "Not a leap year." when divisible by 100 and not divisible by 4 or 400' do
    expect(leap_year(1900)).to eq("Not a leap year.")
    expect(leap_year(1500)).to eq("Not a leap year.")
  end
  
  it 'returns "Not a leap year."when not divisible by 4, 100, or 400' do
    expect(leap_year(2001)).to eq("Not a leap year.")
  end
end
