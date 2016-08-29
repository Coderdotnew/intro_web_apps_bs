require_relative './spec_helper'
require_relative '../rps.rb'

describe "RPS" do
  let(:game1) {RPS.new("rock")}
  let(:game2) {RPS.new("paper")}  
  let(:game3) {RPS.new("scissors")}    
  let(:game4) {RPS.new("banana")}  

  describe '::new' do 
    it "instantiates with a choice passed in upon initialization" do
      expect(game1.choice).to eq("rock")
    end

    it "instantiates with a computer choice set to an array and returns a random choice from the array (either rock, paper, or scissors)" do
      possible_computer_choices = ["rock", "paper", "scissors"]
      expect(possible_computer_choices).to include(game1.computer_choice) 
    end
  end

  describe '#game'do 
    it "returns the correct feedback message for when the user chooses rock" do
      # use the following possible feedback messages for each scenario depending on the computer choice
      possible_return_values = ["The computer chose rock. TIE!", "The computer chose paper. YOU LOSE!", "The computer chose scissors. YOU WIN!"]
      expect(possible_return_values).to include(game1.game)
    end

    it "returns the correct feedback message for when the user chooses paper" do
      # use the following possible feedback messages for each scenario depending on the computer choice
      possible_return_values = ["The computer chose rock. YOU WIN!", "The computer chose paper. TIE!", "The computer chose scissors. YOU LOSE!"]
      expect(possible_return_values).to include(game2.game)
    end

    it "returns the correct feedback message for when the user chooses scissors" do
      # use the following possible feedback messages for each scenario depending on the computer choice
      possible_return_values = ["The computer chose rock. YOU LOSE!", "The computer chose paper. YOU WIN!", "The computer chose scissors. TIE!"]
      expect(possible_return_values).to include(game3.game)
    end

    it "returns a feedback message when the user inputs an unknown choice" do
      expect(game4.game).to eq("Choose rock, paper, or scissors!")
    end
  end

end