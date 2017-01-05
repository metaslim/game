require "minitest/autorun"
require_relative '../../lib/action/right.rb'
require_relative '../../lib/robot/robot.rb'

class TestRight < Minitest::Test
  attr_reader :right

  def setup
    @right = Game::Right.new
  end


  def test_act_when_allowed
    robot = Game::Robot.new
    robot.stub :allowed_to_move?, (true) do
      right.act(robot, "RIGHT")
      assert_equal 0, robot.x
      assert_equal 0, robot.y
      assert_equal "SOUTH", robot.direction
    end
  end

  def test_act_when_disallowed
    robot = Game::Robot.new
    robot.stub :allowed_to_move?, (false) do
      right.act(robot, "RIGHT")
      assert_equal 0, robot.x
      assert_equal 0, robot.y
      assert_equal "EAST", robot.direction
    end
  end
end