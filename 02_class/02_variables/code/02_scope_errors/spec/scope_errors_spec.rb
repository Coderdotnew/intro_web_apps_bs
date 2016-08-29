require_relative './spec_helper'
require_relative '../scope_errors.rb'

describe '#error1' do 
  it 'puts "Error 1 is fixed. Scope is about variable visibility." to the screen' do
    expect($stdout).to receive(:puts).with("Error 1 is fixed. Scope is about variable visibility.") 
    error1
  end
end

describe '#error2' do 
  it 'puts "Error 2 is fixed. Variables can only start with a lower case letter or an underscore." to the screen' do
    expect($stdout).to receive(:puts).with("Error 2 is fixed. Variables can only start with a lower case letter or an underscore.") 
    error2
  end
end

describe '#error3' do 
  it 'puts "String interpolation requires special syntax to input variable data into a string." to the screen' do
    expect($stdout).to receive(:puts).with("String interpolation requires special syntax to input variable data into a string.") 
    error3
  end
end

describe '#error4' do 
  it 'puts "I love football so my favorite team is the Arizona Cardinals." to the screen' do
    expect($stdout).to receive(:puts).with("I love football, so my favorite team is the Arizona Cardinals.") 
    error4
  end
end





