require("minitest/autorun")
require("minitest/rg")
require_relative ("../lab_b")

class TestSportsTeam < MiniTest::Test

 def test_get_team_member
   team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
   assert_equal("E21", team.team())
 end

 def test_get_player_name
   team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
   assert_equal(["Hannah", "Rachel", "Pauline"], team.player())
 end

 def test_get_coach_name
   team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
   assert_equal("Finn", team.coach())
 end


 def test_set_coach_name
   team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
   team.set_coach_name("Zsolt")
   assert_equal("Zsolt", team.coach())
  end

 def test_add_new_player
   team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
   team.set_team_player("Juan")
   assert_equal(["Hannah", "Rachel", "Pauline", "Juan"], team.player())
 end

 def test_player_in_team
   team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
   team.player_in_team("Hannah")
   assert_equal("Hannah", team.player_in_team("Hannah"))
 end

 def test_outcome
   team = SportsTeam.new("E21", ["Hannah", "Rachel", "Pauline"], "Finn", 0)
   team.outcome("lose")
   assert_equal(0, team.outcome("lose") )
 end



end
