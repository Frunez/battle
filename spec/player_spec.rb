require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { double :name }
  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq name
    end
  end

  describe '#Hitpoints' do
    it 'player should have hitpoints' do
      expect(player.hitpoints).to eq 100
    end
  end

  describe '#attack' do
    it 'allows player to receive_damage when attacked' do
      expect{ player.receive_damage }.to change{ player.hitpoints }.by -10
    end
  end
end
