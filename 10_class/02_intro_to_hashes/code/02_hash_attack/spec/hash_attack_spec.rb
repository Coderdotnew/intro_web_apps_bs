require_relative './spec_helper'
require_relative '../hash_attack.rb'

describe "#key_count" do 
  it "returns the total key count in the capitals hash" do
    expect(key_count).to eq(8)
  end
end

describe "#value_count" do 
  it "returns the total value count in the capitals hash" do
    expect(value_count).to eq(8)
  end
end

describe "#add_oregon" do 
  it "update the hash to include oregon and Salem and return the hash" do
    expect(add_oregon.keys[8]).to eq(:oregon)
    expect(add_oregon.values[8]).to eq("Salem")
  end
end

describe "#delete_utah" do 
  it "removes utah from the hash" do
    expect(delete_utah.include?("utah")).to eq(false)
  end
end

describe "#upcase" do 
  it "returns upcase hawaii value" do
    expect(upcase).to eq("HONOLULU")
  end
end

describe "#update_arizona" do 
  it "updates arizona value to Phoenix" do
    expect(update_arizona).to eq("Phoenix")
  end
end


# challenge

describe '#print_states_capitals' do
  it 'print each key and value pair to the screen in the following format: The capital of ____ is _____.' do
    expect($stdout).to receive(:puts).with("The capital of Arizona is Phoenix.")
    expect($stdout).to receive(:puts).with("The capital of California is Sacramento.")
    expect($stdout).to receive(:puts).with("The capital of Texas is Austin.")
    expect($stdout).to receive(:puts).with("The capital of Florida is Tallassee.")
    expect($stdout).to receive(:puts).with("The capital of Colorado is Denver.")
    expect($stdout).to receive(:puts).with("The capital of Michigan is Lansing.")
    expect($stdout).to receive(:puts).with("The capital of Hawaii is Honolulu.")
    expect($stdout).to receive(:puts).with("The capital of Oregon is Salem.")
  print_states_capitals
  end
end