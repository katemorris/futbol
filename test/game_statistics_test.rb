require "minitest/autorun"
require "minitest/pride"
require './lib/stat_tracker'
require "./lib/game_statistics"
require "pry";

class GameStatisticsTest < Minitest::Test
  def setup
    game_path = './data/dummy_game.csv'
    team_path = './data/teams.csv'
    game_teams_path = './data/dummy_game_teams.csv'

    locations = {
      games: game_path,
      teams: team_path,
      game_teams: game_teams_path
    }

    @stat_tracker = StatTracker.from_csv(locations)
    @game_statistics = GameStatistics.new(@stat_tracker)
  end

  def test_it_exists
    assert_instance_of GameStatistics, @game_statistics
  end

  def test_highest_total_score

    assert_equal 5, @game_statistics.highest_total_score

  end

  def test_lowest_total_score

    assert_equal 2, @game_statistics.lowest_total_score
  end

  def test_home_team_winning_percentage

    assert_equal 50.00, @game_statistics.percentage_home_wins
  end

  def test_visitor_team_winning_percentage

    assert_equal 33.33, @game_statistics.percentage_visitor_wins
  end

  def test_tie_percentage

    assert_equal 16.67, @game_statistics.percentage_ties
  end
end