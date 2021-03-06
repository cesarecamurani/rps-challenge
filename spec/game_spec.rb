require 'game'

describe Game do
  let(:cesare) { double :player_name }
  let(:rock) { double :player_move }
  subject(:game) { described_class.new(cesare, rock) }


  describe '#au_pair' do
    it "Shows a 'It's a draw!' message" do
      allow(rock).to receive(:to_sym) { :rock }
      allow(Game::PC_MOVES).to receive(:sample) { :rock }
      expect(game.draw).to eq "It's a Draw!"
    end
  end

  describe '#player_wins' do
    it "Shows a 'Player Wins!' message" do
      allow(rock).to receive(:to_sym) { :rock }
      allow(Game::PC_MOVES).to receive(:sample) { :scissors }
      expect(game.showdown).to eq "#{cesare} Wins!"
    end
  end

  describe '#pc_wins' do
    it "Shows a 'PC Wins!' message" do
      allow(rock).to receive(:to_sym) { :rock }
      allow(Game::PC_MOVES).to receive(:sample) { :paper }
      expect(game.showdown).to eq "PC Wins!"
    end
  end


end
