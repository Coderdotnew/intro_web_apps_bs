require_relative './spec_helper'
require_relative '../fizzbuzz_loops.rb'

describe '#fizzbuzz_loops' do

  it 'outputs Fizz, Buzz, FizzBuzz, or the number of the loop' do
    expect($stdout).to receive(:puts).with(1) 
    expect($stdout).to receive(:puts).with(2) 
    expect($stdout).to receive(:puts).with("Fizz") 
    expect($stdout).to receive(:puts).with(4) 
    expect($stdout).to receive(:puts).with("Buzz") 
    expect($stdout).to receive(:puts).with("Fizz") 
    expect($stdout).to receive(:puts).with(7) 
    expect($stdout).to receive(:puts).with(8) 
    expect($stdout).to receive(:puts).with("Fizz") 
    expect($stdout).to receive(:puts).with("Buzz")
    expect($stdout).to receive(:puts).with(11) 
    expect($stdout).to receive(:puts).with("Fizz") 
    expect($stdout).to receive(:puts).with(13) 
    expect($stdout).to receive(:puts).with(14) 
    expect($stdout).to receive(:puts).with("FizzBuzz") 
    fizzbuzz_loops(15)
  end
  
end
