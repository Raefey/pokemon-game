class Player

  DEFAULT_HITPOINTS = 100

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HITPOINTS
  end

  def receive_damage
    @hit_points -= rand(7..23)
  end

  def dead?
    hit_points <=0
  end

  def opponent
    opposite = {
      'Bulbasaur' => 'Charmander',
      'Squirtle' => 'Bulbasaur',
      'Charmander' => 'Squirtle'
    }
    Player.new(opposite[@name])
  end

  def image_back
    images = {
      'Bulbasaur' => 'https://cdn.bulbagarden.net/upload/e/e9/Spr_b_5b_001.png',
      'Squirtle' => 'https://cdn.bulbagarden.net/upload/3/3d/Spr_b_5b_007.png',
      'Charmander' => 'https://cdn.bulbagarden.net/upload/5/54/Spr_b_5b_004.png'
    }
    images[@name]
  end

  def image_front
    images = {
      'Bulbasaur' => 'https://cdn.bulbagarden.net/upload/7/76/Spr_5b_001.png',
      'Squirtle' => 'https://cdn.bulbagarden.net/upload/5/59/Spr_5b_007.png',
      'Charmander' => 'https://cdn.bulbagarden.net/upload/0/0a/Spr_5b_004.png'
    }
    images[@name]
  end

  def poke_move
    move = {
      'Bulbasaur' => 'Vine Whip',
      'Squirtle' => 'Bubble',
      'Charmander' => 'Ember'
    }
    move[@name]
  end

  def healing
    @hitpoints = DEFAULT_HITPOINTS
  end
end
