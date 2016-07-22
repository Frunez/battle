require 'game'

describe Game do
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.opponent_of(player_1)).to eq player_2
    end
  end

  describe '#attack' do
    it 'allows player to receive_damage when attacked' do
      expect(game.opponent_of(player_1)).to receive(:receive_damage)
      game.attack(game.opponent_of(player_1))
    end
  end

  describe '#current_turn' do
    it 'starts with player one' do
    expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turn(player)' do
    it "switches player turn" do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

end
