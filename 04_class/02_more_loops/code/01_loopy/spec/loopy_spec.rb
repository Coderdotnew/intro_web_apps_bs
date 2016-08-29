require_relative './spec_helper'
require_relative '../loopy.rb'

describe '#expected_outcome' do
  it 'returns the expected outcome string after performing a loop' do
    expect(expected_outcome).to eq("Now you're a loop master!")
  end

  it 'outputs the loop number defined in the expected_outcome method' do 
    expect($stdout).to receive(:puts).with("This is loop 1")
    expect($stdout).to receive(:puts).with("This is loop 2")
    expect($stdout).to receive(:puts).with("This is loop 3")
    expect($stdout).to receive(:puts).with("This is loop 4")
    expect($stdout).to receive(:puts).with("This is loop 5")
    expected_outcome
  end
end

describe '#while_loop' do
  it 'performs the same function as the expected_outcome method' do
    expect(while_loop).to eq("Now you're a loop master!")
  end

  it 'outputs the loop number defined in the expected_outcome method' do 
    expect($stdout).to receive(:puts).with("This is loop 1")
    expect($stdout).to receive(:puts).with("This is loop 2")
    expect($stdout).to receive(:puts).with("This is loop 3")
    expect($stdout).to receive(:puts).with("This is loop 4")
    expect($stdout).to receive(:puts).with("This is loop 5")
    while_loop
  end
end

describe '#until_loop' do
  it 'performs the same function as the expected_outcome method' do
    expect(until_loop).to eq("Now you're a loop master!")
  end

  it 'outputs the loop number defined in the expected_outcome method' do 
    expect($stdout).to receive(:puts).with("This is loop 1")
    expect($stdout).to receive(:puts).with("This is loop 2")
    expect($stdout).to receive(:puts).with("This is loop 3")
    expect($stdout).to receive(:puts).with("This is loop 4")
    expect($stdout).to receive(:puts).with("This is loop 5")
    until_loop
  end
end

describe '#for_loop' do
  it 'performs the same function as the expected_outcome method' do
    expect(for_loop).to eq("Now you're a loop master!")
  end

  it 'outputs the loop number defined in the expected_outcome method' do 
    expect($stdout).to receive(:puts).with("This is loop 1")
    expect($stdout).to receive(:puts).with("This is loop 2")
    expect($stdout).to receive(:puts).with("This is loop 3")
    expect($stdout).to receive(:puts).with("This is loop 4")
    expect($stdout).to receive(:puts).with("This is loop 5")
    for_loop
  end
end