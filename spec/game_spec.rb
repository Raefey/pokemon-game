require 'game'
describe Game do


  let(:player_1) { double :player_1, opponent: player_2 }
  subject(:game) { described_class.new(player_1) }
  let(:player_2) { double :player_2 }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'creates player_1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'creates player_2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#player_1 turn' do
    it 'shows turn for player 1' do
      expect(game.turn).to eq player_1
    end
  end

  describe '#player_2 turn' do
    it 'shows turn for player 2' do
      game.change_turns
      expect(game.turn).to eq player_2
    end
  end
end
