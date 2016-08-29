require_relative './spec_helper'
require_relative '../class_schedule.rb'

describe "#swap_first_and_last_class" do 
  it "swaps the first and last class and returns the updated array" do
    schedule = ["AP Calculus", "Biology", "AP Comp Sci", "Photography", "Spanish"]
    expect(swap_first_and_last_class(schedule)).to eq(["Spanish", "Biology", "AP Comp Sci", "Photography", "AP Calculus"])
  end
end

describe "#update_bio" do 
  it "changes Biology to AP Biology and returns the updated array" do
    schedule = ["Spanish", "Biology", "AP Comp Sci", "Photography", "AP Calculus"]
    expect(update_bio(schedule)).to eq(["Spanish", "AP Biology", "AP Comp Sci", "Photography", "AP Calculus"])
  end
end

describe "#add_film" do 
  it "add Film to your class schedule after AP Comp Sci and return the updated array" do
    schedule = ["Spanish", "AP Biology", "AP Comp Sci", "Photography", "AP Calculus"]
    expect(add_film(schedule)).to eq(["Spanish", "AP Biology", "AP Comp Sci", "Film", "Photography", "AP Calculus"])
  end
end

describe "#each" do 
  it "returns each item in the array" do
    schedule = ["Spanish", "AP Biology", "AP Comp Sci", "Photography", "AP Calculus"]
    expect(each(schedule)).to eq(["Spanish", "AP Biology", "AP Comp Sci", "Photography", "AP Calculus"])
  end
end


# challenge

describe '#print_schedule_order' do
  it 'print the order of the schedule with the index value first' do
    schedule = ["Spanish", "AP Biology", "AP Comp Sci", "Film", "Photography", "AP Calculus"]
    expect($stdout).to receive(:puts).with("1. Spanish")
    expect($stdout).to receive(:puts).with("2. AP Biology")
    expect($stdout).to receive(:puts).with("3. AP Comp Sci")
    expect($stdout).to receive(:puts).with("4. Film")
    expect($stdout).to receive(:puts).with("5. Photography")
    expect($stdout).to receive(:puts).with("6. AP Calculus")
  print_schedule_order(schedule)
  end
end