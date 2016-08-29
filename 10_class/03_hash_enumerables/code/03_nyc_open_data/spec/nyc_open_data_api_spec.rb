require_relative './spec_helper'
require_relative '../nyc_open_data_api.rb'
require 'open-uri'
require 'json'
require 'openssl'

parsed_data = JSON.parse(open("https://data.cityofnewyork.us/resource/f9bf-2cp4.json").read)

  $first_school = parsed_data[0]
  $second_school = parsed_data[1]
  $third_school = parsed_data[2]
  $fourth_school = parsed_data[3]

# note: some hashes in the online data structure include a key of 
# "handicap_accessible", but we will NOT be querying those hashes 
# so assume that key does not exist 


describe '#math_score' do
  it "returns the average sat math score of the school" do
    expect(math_score($first_school)).to eq("404")
    expect(math_score($third_school)).to eq("402")
  end
end

describe '#school_name' do
  it 'returns the school name' do
    expect(school_name($second_school)).to eq("UNIVERSITY NEIGHBORHOOD HIGH SCHOOL")
    expect(school_name($fourth_school)).to eq("FORSYTH SATELLITE ACADEMY")
  end
end

describe '#all_keys' do
  it 'prints out all the keys in the hash' do
    expect($stdout).to receive(:puts).with("sat_math_avg_score")
    expect($stdout).to receive(:puts).with("school_name")
    expect($stdout).to receive(:puts).with("dbn")
    expect($stdout).to receive(:puts).with("num_of_sat_test_takers")
    expect($stdout).to receive(:puts).with("sat_writing_avg_score")
    expect($stdout).to receive(:puts).with("sat_critical_reading_avg_score")
    all_keys($third_school)
  end
end

describe '#all_values' do
  it 'prints all the values of the hash' do
    expect($stdout).to receive(:puts).with("423")
    expect($stdout).to receive(:puts).with("UNIVERSITY NEIGHBORHOOD HIGH SCHOOL")
    expect($stdout).to receive(:puts).with("01M448")
    expect($stdout).to receive(:puts).with("91")
    expect($stdout).to receive(:puts).with("366")
    expect($stdout).to receive(:puts).with("383")
    all_values($second_school)
  end
end

describe '#key_and_value' do
  it 'prints the key and value of the hash in the specified format' do
    expect($stdout).to receive(:puts).with("The sat_math_avg_score is 402.")
    expect($stdout).to receive(:puts).with("The school_name is EAST SIDE COMMUNITY SCHOOL.")
    expect($stdout).to receive(:puts).with("The dbn is 01M450.")
    expect($stdout).to receive(:puts).with("The num_of_sat_test_takers is 70.")
    expect($stdout).to receive(:puts).with("The sat_writing_avg_score is 370.")
    expect($stdout).to receive(:puts).with("The sat_critical_reading_avg_score is 377.")
    key_and_value($third_school)
  end
end


# challenge
describe '#highest_math' do
  it "returns highest math average score in dataset" do
    expect(highest_math(JSON.parse(open("https://data.cityofnewyork.us/resource/f9bf-2cp4.json").read))).to eq(735)
  end
end

# challenge2
describe '#highest_critical_reading' do
  it "returns the name of the school with the highest critical reading average score in dataset" do
    expect(highest_critical_reading(JSON.parse(open("https://data.cityofnewyork.us/resource/f9bf-2cp4.json").read))).to eq("STUYVESANT HIGH SCHOOL")
  end
end



