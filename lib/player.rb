class Player

  DEFAULT_HITPOINTS = 100

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HITPOINTS
  end

  def receive_damage
    @hit_points -= 10
  end

  def dead?
    hit_points <=0
  end

  def image
    images = {
      'Blastoise' => 'https://cdn.bulbagarden.net/upload/3/3d/Spr_5b_009.png',
      'Bulbasaur' => 'https://cdn.bulbagarden.net/upload/e/e9/Spr_b_5b_001.png',
      'Squirtle' => 'https://cdn.bulbagarden.net/upload/3/3d/Spr_b_5b_007.png',
      'Charmander' => 'https://cdn.bulbagarden.net/upload/5/54/Spr_b_5b_004.png'
    }
    images[@name]
  end

  def healing
    @hitpoints = DEFAULT_HITPOINTS
  end
end
