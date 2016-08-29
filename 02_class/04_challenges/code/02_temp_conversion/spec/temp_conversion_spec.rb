require_relative './spec_helper'
require_relative '../temp_conversion.rb'

describe '#c_to_f' do

  it 'should convert celcius to farenheit' do
    expect(c_to_f(10)).to eq(50)
  end

  it 'should convert celcius to farenheit and return a float if necessary' do
    expect(c_to_f(32)).to eq(89.6)
  end

end

describe '#f_to_c' do

  it 'should convert farenheit to celcius' do
    expect(f_to_c(77)).to eq(25)
  end

  it 'should convert farenheit to celcius and return a float to the nearest hundredth' do
    expect(f_to_c(45)).to eq(7.22)
  end

end





