require './lib/player.rb'

describe Player do
  subject(:raefe) { described_class.new('raefe') }
  subject(:tom) { described_class.new('tom') }
  default_hitpoints = Player::DEFAULT_HITPOINTS

   describe '#name' do
     it 'returns its own name' do
       expect(raefe.name).to eq 'raefe'
     end
   end

   describe '#hitpoints' do
     it 'returns its own hitpoints' do
       expect(raefe.hit_points).to eq(default_hitpoints)
     end
   end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { tom.receive_damage }.to change { tom.hit_points }.by(-10)
    end
  end
 end
