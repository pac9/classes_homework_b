class SportsTeam
  attr_accessor(:team, :player, :coach)

  def initialize(team_name, player_name, coach_name)
  @team = team_name
  @player = player_name
  @coach = coach_name
  end
  #
  # def get_team_name
  #   @team
  # end
  #
  # def get_player_name
  #   @player
  # end
  #
  # def get_coach_name
  # #   @coach
  # end
  #
  def set_coach_name(coach_name)
    @coach = coach_name
  end

  def set_team_player(player_name)
    @player << (player_name)
     # p @player
  end

end
