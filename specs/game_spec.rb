require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/game'
class TestGame < Minitest::Test


def setup
  player_1_choice = Player1.new("rock").player_1_choice
  player_2_choice = Player2.new("scissors").player_2_choice
  @game1 = Game.new(player_1_choice, player_2_choice)
  player_1_choice = Player1.new("rock").player_1_choice
  player_2_choice = Player2.new("paper").player_2_choice
  @game2 = Game.new(player_1_choice, player_2_choice)
  player_1_choice = Player1.new("rock").player_1_choice
  player_2_choice = Player2.new("rock").player_2_choice
  @game3 = Game.new(player_1_choice, player_2_choice)
  player_1_choice = Player1.new("paper").player_1_choice
  player_2_choice = Player2.new("rock").player_2_choice
  @game4 = Game.new(player_1_choice, player_2_choice)

end

def test_game__rock_wins
  assert_equal("rock wins", @game1.play)
end
def test_game__scissors_wins
  assert_equal("paper wins", @game2.play)
end
def test_game__tie
  assert_equal("tie", @game3.play)
end

def test_game__paper_wins
  assert_equal("paper wins", @game4.play)
end







end
