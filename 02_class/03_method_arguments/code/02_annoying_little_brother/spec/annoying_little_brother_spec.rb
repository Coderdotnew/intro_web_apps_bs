require_relative './spec_helper'
require_relative '../annoying_little_brother.rb'

describe '#little_brother' do 
  it 'should output the default argument phrase "Whatcha doing?! Can I come?!" to the screen' do
    expect($stdout).to receive(:puts).with("Whatcha doing?! Can I come?!") 
    little_brother
  end

  it 'should output the user input argument phrase to the screen' do 
    expect($stdout).to receive(:puts).with("I'm telling mom!!!!") 
    little_brother("I'm telling mom!!!!")
  end
end