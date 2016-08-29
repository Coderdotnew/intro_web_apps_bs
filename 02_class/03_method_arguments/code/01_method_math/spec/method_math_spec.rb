require_relative './spec_helper'
require_relative '../method_math.rb'

describe '#add' do 
  it 'adds two numbers together' do
    expect(add(5,4)).to eq(9)
    expect(add(2,12)).to eq(14)
  end
end

describe '#subtract' do
  it 'subtracts two numbers from each other' do
    expect(subtract(10,5)).to eq(5)
    expect(subtract(25,7)).to eq(18)
  end
end

describe '#divide' do
  it 'divides two numbers from each other' do
    expect(divide(50,2)).to eq(25)
    expect(divide(12,6)).to eq(2)
  end
end

describe '#multiply' do
  it 'multiplies two numbers together' do
    expect(multiply(4,30)).to eq(120)
    expect(divide(3,13)).to eq(39)
  end
end

describe '#modulo' do
  it 'returns the remainder of two numbers' do
    expect(modulo(34, 5)).to eq(4)
    expect(modulo(100, 3)).to eq(1)
  end
end

describe '#exponent' do
  it 'returns the exponent' do
    expect(exponent(2, 3)).to eq(8)
    expect(exponent(5, 3)).to eq(125)
  end
end

describe '#square_root' do
  it 'returns the square root of a number' do
    expect(square_root(81)).to eq(9)
    expect(square_root(144)).to eq(12)
  end
end



