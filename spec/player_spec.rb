require './lib/player.rb'

describe Player do
  subject(:charmander) { described_class.new('Charmander') }
  subject(:squirtle) { described_class.new('Squirtle') }
  default_hitpoints = Player::DEFAULT_HITPOINTS

   describe '#name' do
     it 'returns its own name' do
       expect(charmander.name).to eq 'Charmander'
     end
   end

   describe '#hitpoints' do
     it 'returns its own hitpoints' do
       expect(charmander.hit_points).to eq(default_hitpoints)
     end
   end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { squirtle.receive_damage }.to change { squirtle.hit_points }
    end
  end
 end
