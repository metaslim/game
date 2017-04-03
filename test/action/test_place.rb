require "minitest/autorun"
require_relative '../../lib/action/place.rb'
require_relative './robot_maker.rb'

class TestPlace < Minitest::Test
  def test_act_place
    place = Game::Place.new
    robot = RobotMaker::create(1, 3, "WEST")

    x, y, direction = place.act(robot, "PLACE 1,3,WEST")
    assert_equal 1, x
    assert_equal 3, y
    assert_equal "WEST", direction
  end
end