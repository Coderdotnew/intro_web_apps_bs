require_relative './spec_helper'
require_relative '../black_friday.rb'

describe '#best_buy' do
  it 'outputs each line number that get a TV and returns the total number of people that get a tv' do
    expect(best_buy(num_tvs=rand(1..10))).to eq("#{num_tvs} people get a TV!")
  end

  it 'outputs each line number that get a TV if the number is 2' do
    expect($stdout).to receive(:puts).with("1: You get a TV!")
    expect($stdout).to receive(:puts).with("2: You get a TV!")
    best_buy(2)
  end

  it 'outputs each line number that get a TV if the number is 5' do
    expect($stdout).to receive(:puts).with("1: You get a TV!")
    expect($stdout).to receive(:puts).with("2: You get a TV!")
    expect($stdout).to receive(:puts).with("3: You get a TV!")
    expect($stdout).to receive(:puts).with("4: You get a TV!")
    expect($stdout).to receive(:puts).with("5: You get a TV!")
    best_buy(5)
  end

  it 'outputs each line number that get a TV if the number is 9' do
    expect($stdout).to receive(:puts).with("1: You get a TV!")
    expect($stdout).to receive(:puts).with("2: You get a TV!")
    expect($stdout).to receive(:puts).with("3: You get a TV!")
    expect($stdout).to receive(:puts).with("4: You get a TV!")
    expect($stdout).to receive(:puts).with("5: You get a TV!")
    expect($stdout).to receive(:puts).with("6: You get a TV!")
    expect($stdout).to receive(:puts).with("7: You get a TV!")
    expect($stdout).to receive(:puts).with("8: You get a TV!")
    expect($stdout).to receive(:puts).with("9: You get a TV!")
    best_buy(9)
  end

end