require_relative './spec_helper'
require_relative '../weather_alert.rb'

$phx_weather = {
  :city => "Phoenix",
  :description => "warm",
  :temperature_farenheit => 86.7,
  :temperature_celcius => 30.3
}

$nyc_weather = {
  :city => "New York City",
  :season => ["fall", "winter", "spring", "summer"],
  :temperature => [55, 33, 48, 75]
}


describe '#city' do
  it "returns the city from the phx_weather weather hash" do
    expect(city($phx_weather)).to eq("Phoenix")
  end
end

describe '#description' do
  it "returns the description from the phx_weather hash" do
    expect(description($phx_weather)).to eq("warm")
  end
end

describe '#weather_report' do
  it "returns a weather report as a string from the phx_weather hash" do
    expect(weather_report($phx_weather)).to eq("The weather in Phoenix is warm. The temperature is 86.7 degrees Farenheit and 30.3 degrees Celcius.")
  end
end

describe '#city_weather' do
  it "prints out every key and value from the phx_weather hash in the following format: 'The [key] is [value].'" do
    expect($stdout).to receive(:puts).with("The city is Phoenix.")
    expect($stdout).to receive(:puts).with("The description is warm.")
    expect($stdout).to receive(:puts).with("The temperature_farenheit is 86.7.")
    expect($stdout).to receive(:puts).with("The temperature_celcius is 30.3.")
    city_weather($phx_weather)
  end
end

describe '#nyc_season' do
  it "returns summer from the nyc_weather hash" do
    expect(nyc_season($nyc_weather)).to eq("summer")
  end
end

describe '#nyc_fall' do
  it "returns the temperature for fall in the nyc_weather hash" do
    expect(nyc_fall($nyc_weather)).to eq(55)
  end
end

describe '#nyc_fall_weather' do
  it "returns the fall season and temperature from the nyc_weather hash in a formatted string" do
    expect(nyc_fall_weather($nyc_weather)).to eq("The weather for New York City in the fall is 55 degrees.")
  end
end

describe '#nyc_temps' do
  it "returns each temperature value from nyc_weather hash" do
    expect(nyc_temps($nyc_weather)).to eq([55, 33, 48, 75])
  end
end




