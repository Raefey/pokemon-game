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

  def healing
    @hitpoints = DEFAULT_HITPOINTS
  end
end
