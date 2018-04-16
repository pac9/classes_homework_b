class SportsTeam
  attr_accessor(:team, :player, :coach, :points)

  def initialize(team_name, player_name, coach_name, points_total)
  @team = team_name
  @player = player_name
  @coach = coach_name
  @points = points_total
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

  def player_in_team(player_name)
    player = []
    for player in @player
         return player if player == player_name
      end
  end

  def outcome(winorlose)
    @points = 0
    if winorlose == "win"
      @points += 5
    else
      @points += 0
    end
  end
end
