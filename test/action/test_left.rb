require "minitest/autorun"
require_relative '../../lib/action/left.rb'
require_relative './robot_maker.rb'

class TestLeft < Minitest::Test
  attr_reader :left

  def setup
    @left = Game::Left.new
  end

  def test_act_when_allowed
    robot = RobotMaker::create(0, 0, "NORTH")

    left.act(robot, "LEFT")
    assert_equal 0, robot.x
    assert_equal 0, robot.y
    assert_equal "NORTH", robot.direction
  end

  def test_act_when_disallowed
    robot = RobotMaker::create(0, 0, "EAST", false)

    left.act(robot, "LEFT")
    assert_equal 0, robot.x
    assert_equal 0, robot.y
    assert_equal "EAST", robot.direction
  end
end