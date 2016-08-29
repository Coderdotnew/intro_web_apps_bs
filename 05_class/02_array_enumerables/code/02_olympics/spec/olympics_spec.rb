require_relative './spec_helper'
require_relative '../olympics.rb'

describe "#first_event" do 
  it "returns the first event in the events array" do
    events = ["hurdles", "basketball", "high jump", "swimming", "boxing", "archery"]
    expect(first_event(events)).to eq("hurdles")
  end
end

describe "#remove_first" do 
  it "removes the first event in the array because you watched it and returns the array with the remaining events" do
    events = ["hurdles", "basketball", "high jump", "swimming", "boxing", "archery"]
    expect(remove_first(events)).to eq(["basketball", "high jump", "swimming", "boxing", "archery"])
  end
end

describe "#update_event_list" do 
  it "adds cycling to the end of the event list and returns the updated array" do
    events = ["hurdles", "basketball", "high jump", "swimming", "boxing", "archery"]
    expect(update_event_list(events)).to eq(["hurdles", "basketball", "high jump", "swimming", "boxing", "archery", "cycling"])
  end
end


describe '#order_events' do
  it 'use each_with_index method to add the index value starting at 1. and return a new array with the expected format' do
    events = ["hurdles", "basketball", "high jump", "swimming", "boxing", "archery"]
    expect(order_events(events)).to eq(["1. Hurdles", "2. Basketball", "3. High jump", "4. Swimming", "5. Boxing", "6. Archery"]) 
  end
end

      