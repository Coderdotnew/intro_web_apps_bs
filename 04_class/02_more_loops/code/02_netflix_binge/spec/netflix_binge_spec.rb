require_relative './spec_helper'
require_relative '../netflix_binge.rb'

describe '#netflix_binge' do
  it 'returns "Netflix binge complete." after the loop is complete' do
    expect(netflix_binge).to eq("Netflix binge complete.")
  end

  it 'outputs the number of hours watched and hours left to watch' do 
    expect($stdout).to receive(:puts).with("0 hours of Netflix down, 10 to go.")
    expect($stdout).to receive(:puts).with("1 hours of Netflix down, 9 to go.")
    expect($stdout).to receive(:puts).with("2 hours of Netflix down, 8 to go.")
    expect($stdout).to receive(:puts).with("3 hours of Netflix down, 7 to go.")
    expect($stdout).to receive(:puts).with("4 hours of Netflix down, 6 to go.")
    expect($stdout).to receive(:puts).with("5 hours of Netflix down, 5 to go.")
    expect($stdout).to receive(:puts).with("6 hours of Netflix down, 4 to go.")
    expect($stdout).to receive(:puts).with("7 hours of Netflix down, 3 to go.")
    expect($stdout).to receive(:puts).with("8 hours of Netflix down, 2 to go.")
    expect($stdout).to receive(:puts).with("9 hours of Netflix down, 1 to go.")
    expect($stdout).to receive(:puts).with("10 hours of Netflix down, 0 to go.")
    netflix_binge
  end
end

