require_relative './spec_helper'
require_relative '../word_manipulator.rb'

describe "#reverse_and_return_original" do 
  it "reverse each word in the words array and return the original words array" do
    words = ["ruby", "javascript", "python", "java"]
    expect(reverse_and_return_original(words)).to eq(["ruby", "javascript", "python", "java"])
  end
end

describe "#reverse_and_return_new" do 
  it "reverse each word in the words array and return the manipulated words array" do
    words = ["ruby", "javascript", "python", "java"]
    expect(reverse_and_return_new(words)).to eq(["ybur", "tpircsavaj", "nohtyp", "avaj"])
  end
end

describe "#pluralize" do 
  it "add 's' to the end of each word to pluralize it and return the manipulated words array" do
    words = ["coder", "programmer", "scientist", "engineer"]
    expect(pluralize(words)).to eq(["coders", "programmers", "scientists", "engineers"])
  end
end

describe "#return_a_states" do 
  it "iterate through the array of state names and return a new array with only the states that begin with the letter A" do
    states = ["Alaska", "California", "Arizona", "New York", "Arkansas"]
    expect(return_a_states(states)).to eq(["Alaska", "Arizona", "Arkansas"])
  end
end


# challenge
describe "#kesha_maker" do 
  it "iterate through the array of names and replace all 's' with '$'" do
    names = ["Kesha", "Stephan","Louis", "Michael"]
    expect(kesha_maker(names)).to eq(["Ke$ha", "$tephan", "Loui$", "Michael"])
  end
end



