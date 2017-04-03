require "minitest/autorun"
require_relative '../../lib/action/left.rb'
require_relative './robot_maker.rb'

class TestLeft < Minitest::Test
  attr_reader :left

  def setup
    @left = Game::Left.new
  end

  def test_act
    robot = RobotMaker::create(0, 0, "NORTH")
    x, y, direction = left.act(robot, "LEFT")
    assert_equal "WEST", direction
  end
end