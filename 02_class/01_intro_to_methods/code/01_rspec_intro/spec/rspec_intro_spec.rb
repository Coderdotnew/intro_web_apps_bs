require_relative './spec_helper'
require_relative '../rspec_intro.rb' # code your solution in this file

describe '#what_is_life' do 
  it 'should return nil' do
    expect(what_is_life).to eq(nil)
  end
end

describe '#answer' do 
  it 'puts 42 to the screen' do
    expect($stdout).to receive(:puts).with(42) 
    answer
  end
end






