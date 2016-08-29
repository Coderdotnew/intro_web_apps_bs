require_relative './spec_helper'
require_relative '../greetings_earthlings.rb' # code your solution in this file

describe '#greeting' do 
  it 'puts "Greetings Earthlings! We come in peace!" to the screen' do
    expect($stdout).to receive(:puts).with("Greetings Earthlings! We come in peace!") # rspec calls your method for you in the line below
    # we are calling the method in the rspec when using puts in the line below
    greeting
  end
end

describe '#greeting_with_return' do 
  it 'should return "Greetings Earthlings! We come in peace!"' do
    expect(greeting_with_return).to eq("Greetings Earthlings! We come in peace!")
    # when returning a value, rspec still needs to call the method but after the expect keyword in the line above
  end
end

describe '#warning' do 
  it 'puts "Just kidding. We only come in peace if you know how to code!" to the screen' do
    expect($stdout).to receive(:puts).with("Just kidding. We only come in peace if you know how to code!") 
    warning
  end
end

describe '#warning_with_return' do 
  it 'should return "Just kidding. We only come in peace if you know how to code!"' do
    expect(warning_with_return).to eq("Just kidding. We only come in peace if you know how to code!")
  end
end