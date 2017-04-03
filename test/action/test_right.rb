require "minitest/autorun"
require_relative '../../lib/action/right.rb'
require_relative './robot_maker.rb'

class TestRight < Minitest::Test
  def test_act_right
    right = Game::Right.new
    robot = RobotMaker::create(0, 0, "NORTH")

    x, y, direction = right.act(robot, "RIGHT")
    assert_equal 0, x
    assert_equal 0, y
    assert_equal "EAST", direction
  end
end