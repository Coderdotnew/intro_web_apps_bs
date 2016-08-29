require_relative './spec_helper'
require_relative '../intro_hashes.rb'

describe "#define_a_hash" do 
  it "create an empty hash" do
    expect(define_a_hash).to be_a(Hash)
  end
end

describe "#oscars_hash" do 
  it "create a hash that returns the correct key value pairs" do
    expect(oscars_hash).to be_a(Hash)
    expect(oscars_hash.keys[0]).to eq(:actor)
    expect(oscars_hash.values[0]).to eq("Leonardo DiCaprio")
    expect(oscars_hash.keys[1]).to eq(:picture)
    expect(oscars_hash.values[1]).to eq("Spotlight")
    expect(oscars_hash.keys[2]).to eq(:effects)
    expect(oscars_hash.values[2]).to eq("Ex Machina")
  end
end

describe "#stanford_mascot" do 
  it "return the Stanford mascot" do
    expect(stanford_mascot).to eq("Tree")
  end
end

describe "#update_oregon_mascot" do 
  it "update the Oregon mascot" do
    expect(update_oregon_mascot).to eq("Duck")
  end
end

describe "#return_usc" do 
  it "return the USC key symbol" do
    expect(return_usc).to eq(:usc)
  end
end

describe "#add_ucla_key" do 
  it "add UCLA key to mascot hash" do
    expect(add_ucla_key).to eq(:ucla)
  end
end

describe "#add_ucla_value" do 
  it "add UCLA key to mascot hash" do
    expect(add_ucla_value).to eq("Bruin")
  end
end
