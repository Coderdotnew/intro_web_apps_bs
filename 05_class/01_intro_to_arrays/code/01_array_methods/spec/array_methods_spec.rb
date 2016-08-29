require_relative './spec_helper'
require_relative '../array_methods.rb'

describe "#sort_words" do 
  it "sorts an array of words alphabetically and returns the sorted array" do
    words = ["watermelon", "strawberry", "apple", "banana", "peach"]
    expect(sort_words(words).first).to eq("apple")
    expect(sort_words(words).last).to eq("watermelon")
    expect(sort_words(words)[2]).to eq("peach")
  end
end

describe "#sort_nums" do 
  it "sorts an array of numbers from smallest to largest and returns the sorted array" do
    nums = [5, 15, 104, 23, 19]
    expect(sort_nums(nums).first).to eq(5)
    expect(sort_nums(nums).last).to eq(104)
    expect(sort_nums(nums)[2]).to eq(19)
  end
end

describe "#include_method" do 
  it "checks if team that is passed in as argument is included in the teams array" do
    teams = ["real madrid", "chelsea", "manchester united", "arsenal", "liverpool"]
      team1 = "arsenal"
      team2 = "manchester city"
      team3 = "real madrid"
    expect(include_method(teams, team1)).to eq(true)
    expect(include_method(teams, team2)).to eq(false)
    expect(include_method(teams, team3)).to eq(true)
  end
end

describe "#reverse_method" do 
  it "returns the array of cities in reverse order" do
    cities = ["phoenix", "new york", "seattle", "los angeles", "miami"]
    expect(reverse_method(cities)).to eq(["miami", "los angeles", "seattle", "new york", "phoenix"])
  end
end

describe "#first_method" do 
  it "returns the first item in the cities array" do
    cities = ["phoenix", "new york", "seattle", "los angeles", "miami"]
    expect(first_method(cities)).to eq("phoenix")
  end
end


describe "#last_method" do 
  it "returns the last item in the cities array" do
    cities = ["phoenix", "new york", "seattle", "los angeles", "miami"]
    expect(last_method(cities)).to eq("miami")
  end
end

describe "#count_method" do 
  it "returns the count of the number of items in the cities array" do
    cities = ["phoenix", "new york","seattle", "los angeles", "miami"]
    expect(count_method(cities)).to eq(5)
  end
end

describe "#to_array_method" do 
  it "returns the count of the number of items in the cities array" do
    range = (1..10)
    expect(to_array_method(range)).to eq([1,2,3,4,5,6,7,8,9,10])
  end
end

