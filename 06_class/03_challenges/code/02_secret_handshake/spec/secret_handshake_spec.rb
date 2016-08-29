require_relative './spec_helper'
require_relative '../secret_handshake.rb'

describe 'SecretHandshake' do 

  describe '::new' do 
    it 'instantiates with a combination of 1 or 0 as a string defined upon initialization' do
      expect { SecretHandshake.new }.to raise_error(StandardError)
    end
  end

  describe '#commands' do 
    it 'returns high five for "1"' do
      handshake = SecretHandshake.new("1")
      expect(handshake.commands).to eq("high five")
    end    

    it 'returns fist bump for "10"' do
      handshake = SecretHandshake.new("10")
      expect(handshake.commands).to eq("fist bump")
    end

    it 'returns low five for "100"' do
      handshake = SecretHandshake.new("100")
      expect(handshake.commands).to eq("low five")
    end

    it 'returns jump spin for "1000"' do
      handshake = SecretHandshake.new("1000")
      expect(handshake.commands).to eq("jump spin")
    end

    it 'returns high five jump spin for "11"' do
      handshake = SecretHandshake.new("11")
      expect(handshake.commands).to eq("high five fist bump") 
    end

    it 'returns the reverse order of high five jump spin for "10011"' do
      handshake = SecretHandshake.new("10011")
      expect(handshake.commands).to eq("fist bump high five")
    end

    it 'returns the reverse order of high five fist bump low five jump spin for "11111"' do
      handshake = SecretHandshake.new("11111")
      expect(handshake.commands).to eq("jump spin low five fist bump high five")
    end

    it 'should return an empty string for an invalid input' do
      handshake = SecretHandshake.new("binary")
      expect(handshake.commands).to eq("")
    end
  end

end