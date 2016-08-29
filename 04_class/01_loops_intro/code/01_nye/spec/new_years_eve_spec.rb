require_relative './spec_helper'
require_relative '../new_years_eve.rb'

describe '#countdown_to_midnight' do
  
  it 'returns "HAPPY NEW YEAR!"' do
    expect(countdown_to_midnight(10)).to eq("HAPPY NEW YEAR!")
  end

  it 'outputs 1 to the screen when there is 1 second left in loop' do
    expect($stdout).to receive(:puts).with("10") 
    expect($stdout).to receive(:puts).with("9") 
    expect($stdout).to receive(:puts).with("8") 
    expect($stdout).to receive(:puts).with("7") 
    expect($stdout).to receive(:puts).with("6") 
    expect($stdout).to receive(:puts).with("5")
    expect($stdout).to receive(:puts).with("4") 
    expect($stdout).to receive(:puts).with("3") 
    expect($stdout).to receive(:puts).with("2")
    expect($stdout).to receive(:puts).with("1")   
    countdown_to_midnight(10)
  end

end
