require_relative './spec_helper'
require_relative '../sci_fi_bios.rb'

describe '#luke_bio' do 
  it 'puts "My name is Luke Skywalker. My father is Darth Vader. I am a Jedi." to the screen' do
    expect(luke_bio).to eq("My name is Luke Skywalker. My father is Darth Vader. I am a Jedi.") 
  end
end

describe '#harry_bio' do 
  it 'puts "My name is Harry Potter. My best friend is Ron Weasley. I am a Wizard." to the screen' do
    expect(harry_bio).to eq("My name is Harry Potter. My best friend is Ron Weasley. I am a Wizard.") 
  end
end

describe '#frodo_bio' do 
  it 'puts "My name is Frodo Baggins. My best friend is Samwise Gamgee. I am a Ring Bearer." to the screen' do
    expect(frodo_bio).to eq("My name is Frodo Baggins. My best friend is Samwise Gamgee. I am a Ring Bearer.") 
  end
end

