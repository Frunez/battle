class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns(player)
    if @current_turn == player_1
      @current_turn = player_2
    elsif @current_turn == player_2
      @current_turn = player_1
  end

  def opponent(player)
    switch_turns(player)
    @current_turn
  end
end
