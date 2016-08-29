require_relative './spec_helper'
require_relative '../access_granted.rb'

describe "#third_dog" do 
  it "returns the third dog in the dogs array" do
    expect(third_dog).to eq("Frankie")
  end
end

describe "#first_subject" do 
  it "returns the first subject in the subjects array" do
    expect(first_subject).to eq("chemistry")
  end
end

describe "#last_three_movies" do 
  it "returns the last three movies in the movies array" do
    expect(last_three_movies).to eq(["Trainwreck", "Star Wars", "Deadpool"])
  end
end

describe "#fourth_letter_third_school" do 
  it "returns the fourth letter of the third school" do
    expect(fourth_letter_third_school).to eq("p")
  end
end

describe "#third_word_second_movie" do 
  it "returns the third word in the second movie" do
    expect(third_word_second_movie).to eq("Network")
  end
end

describe "#reverse_first_subject" do 
  it "returns the first subject reversed" do
    expect(reverse_first_subject).to eq("yrtsimehc")
  end
end

describe "#reverse_second_word_of_fourth_movie" do 
  it "returns the second word of the fourth movie reversed" do
    expect(reverse_second_word_of_fourth_movie).to eq("sraW")
  end
end