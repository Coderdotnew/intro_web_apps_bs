require_relative './spec_helper'
require_relative '../concert_convos_pt2.rb'

describe '#concert_convo' do
  it 'returns "Speak louder!" if you are not shouting (all caps)' do
    expect(concert_convo('I love this song!')).to eq("Speak louder!")
  end

  it 'returns "I love this song, too!" when you shout' do
    expect(concert_convo('I LOVE THIS SONG!')).to eq("I love this song, too!")
  end

end 