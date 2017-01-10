require "minitest/autorun"
require_relative '../../lib/action/move.rb'
require_relative './robot_maker.rb'

class TestMove < Minitest::Test
  attr_reader :move

  def setup
    @move = Game::Move.new
  end


  def test_act_when_allowed
    robot = RobotMaker::create(1, 0, "EAST")

    move.act(robot, "MOVE")
    assert_equal 1, robot.x
    assert_equal 0, robot.y
    assert_equal "EAST", robot.direction
  end

  def test_act_when_disallowed
    robot = RobotMaker::create(0, 0, "EAST", "false")

    move.act(robot, "MOVE")
    assert_equal 0, robot.x
    assert_equal 0, robot.y
    assert_equal "EAST", robot.direction
  end
end
