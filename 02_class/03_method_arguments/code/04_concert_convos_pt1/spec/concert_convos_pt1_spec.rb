require_relative './spec_helper'
require_relative '../concert_convos_pt1.rb'

describe '#almost_there' do 
  it 'return the expected string in all caps using a string method' do
    expect(almost_there("Taylor Swift")).to eq("OMG. I CAN'T WAIT TO SEE TAYLOR SWIFT!!")
  end
end

describe '#national_anthem' do 
  it 'return the expected string in all lower case using a string method' do
    expect(national_anthem("SHHH")).to eq("shhh no talking.")
  end
end

describe '#encore' do 
  it 'return the expected string with the song title and artist capitalized using a string method' do
    expect(encore("work", "rihanna")).to eq("It's Work by Rihanna! This is my favorite song!")
  end
end