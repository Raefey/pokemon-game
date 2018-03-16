class Game

  attr_reader :turn, :player_1, :player_2, :opponent

  def initialize(player_1)
    @player_1 = player_1
    @player_2 = player_1.opponent
    @players = [player_1, player_2]
    @turn = player_1
    @opponent = player_2
  end

  def self.create_instance(player_1)
    @game = Game.new(player_1)
  end

  def self.return_instance
    @game
  end

  def attack(name)
    name.receive_damage
  end

  def change_turns
    @turn = @players.reverse!.first
    @opponent = @players.last
  end

  def game_over?(name)
    name.dead?
  end

  def heal(name)
    name.healing
  end
end
