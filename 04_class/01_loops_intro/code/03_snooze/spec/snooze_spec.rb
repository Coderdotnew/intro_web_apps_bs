require_relative './spec_helper'
require_relative '../snooze.rb'

describe '#snooze' do
  it 'returns "TIME TO GO!"' do
    expect(snooze(6,65)).to eq("TIME TO GO!")
  end
  
  it 'outputs the number of times you can hit snooze to the screen' do
    expect($stdout).to receive(:puts).with("I can hit snooze 6 more times") 
    expect($stdout).to receive(:puts).with("I can hit snooze 5 more times") 
    expect($stdout).to receive(:puts).with("I can hit snooze 4 more times") 
    expect($stdout).to receive(:puts).with("I can hit snooze 3 more times") 
    expect($stdout).to receive(:puts).with("I can hit snooze 2 more times") 
    expect($stdout).to receive(:puts).with("I can hit snooze 1 more times") 
    snooze(6,63)
  end

end