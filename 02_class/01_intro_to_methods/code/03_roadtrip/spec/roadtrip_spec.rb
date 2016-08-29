require_relative './spec_helper'
require_relative '../roadtrip.rb' # code your solution in this file

describe '#arizona' do 
  it 'puts "Look...the Grand Canyon!" to the screen' do
    # $stdout represents the output of your program, don't worry about how
    # we are testing this, focus on simply coding your solution.
    expect($stdout).to receive(:puts).with("Look...the Grand Canyon!")
    # rspec calls your method for you in the line below
    # this means you DO NOT have to call your methods at the bottom of your roadtrip.rb file
    arizona
  end
end

describe '#california' do 
  it 'puts "Look... the Pacific Ocean!" to the screen' do
    # $stdout represents the output of your program, don't worry about how
    # we are testing this, focus on simply coding your solution.
    expect($stdout).to receive(:puts).with("Look... the Pacific Ocean!")
    # rspec calls your method for you in the line below
    # this means you DO NOT have to call your methods at the bottom of your roadtrip.rb file
    california
  end
end

describe '#new_york' do 
  it 'puts "Look... the Statue of Liberty!" to the screen' do
    # $stdout represents the output of your program, don't worry about how
    # we are testing this, focus on simply coding your solution.
    expect($stdout).to receive(:puts).with("Look... the Statue of Liberty!")
    # rspec calls your method for you in the line below
    # this means you DO NOT have to call your methods at the bottom of your roadtrip.rb file
    new_york
  end
end

describe '#washington_dc' do 
  it 'puts "Look... the White House!" to the screen' do
    # $stdout represents the output of your program, don't worry about how
    # we are testing this, focus on simply coding your solution.
    expect($stdout).to receive(:puts).with("Look... the White House!")
    # rspec calls your method for you in the line below
    # this means you DO NOT have to call your methods at the bottom of your roadtrip.rb file
    washington_dc
  end
end