require "minitest/autorun"
require_relative '../../lib/action/right.rb'
require_relative './robot_maker.rb'

class TestRight < Minitest::Test
  attr_reader :right

  def setup
    @right = Game::Right.new
  end


  def test_act_when_allowed
    robot = RobotMaker::create(0, 0, "SOUTH")

    right.act(robot, "RIGHT")
    assert_equal 0, robot.x
    assert_equal 0, robot.y
    assert_equal "SOUTH", robot.direction
  end

  def test_act_when_disallowed
    robot = RobotMaker::create(0, 0, "EAST", false)

    right.act(robot, "RIGHT")
    assert_equal 0, robot.x
    assert_equal 0, robot.y
    assert_equal "EAST", robot.direction
  end
end