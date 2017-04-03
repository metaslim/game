require "minitest/autorun"
require_relative '../../lib/action/left.rb'
require_relative './robot_maker.rb'

class TestLeft < Minitest::Test
  def test_act_left
    left = Game::Left.new
    robot = RobotMaker::create(0, 0, "NORTH")
    x, y, direction = left.act(robot, "LEFT")

    assert_equal 0, x
    assert_equal 0, y
    assert_equal "WEST", direction
  end
end