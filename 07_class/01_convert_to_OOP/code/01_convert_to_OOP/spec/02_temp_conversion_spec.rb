require_relative './spec_helper'
require_relative '../lib/02_temp_conversion.rb'

describe 'ConvertTemp' do
  let(:conversion1) {ConvertTemp.new(10)} 
  let(:conversion2) {ConvertTemp.new(32)} 
  let(:conversion3) {ConvertTemp.new(77)} 
  let(:conversion4) {ConvertTemp.new(45)} 

  describe '::new' do 
    it 'instantiates with a number passed in upon initialization' do 
      expect(conversion1.temp).to eq(10)
    end
  end

  describe "#c_to_f" do
    it "should convert celcius to farenheit" do
      expect(conversion1.c_to_f).to eq(50)
    end

    it "should convert celcius to farenheit and return a float if necessary" do
      expect(conversion2.c_to_f).to eq(89.6)
    end
  end

  describe "#f_to_c" do
    it "should convert farenheit to celcius" do
      expect(conversion3.f_to_c).to eq(25)
    end

    it "should convert farenheit to celcius and return a float to the nearest hundredth" do
      expect(conversion4.f_to_c).to eq(7.22)
    end
  end

end