require "minitest/autorun"
require_relative '../../lib/action/reverse.rb'
require_relative './robot_maker.rb'

class TestLeft < Minitest::Test
  def test_act_reverse
    reverse = Game::Reverse.new
    robot = RobotMaker::create(0, 0, "NORTH")
    x, y, direction = reverse.act(robot, "REVERSE")

    assert_equal 0, x
    assert_equal 0, y
    assert_equal "SOUTH", direction
  end
end