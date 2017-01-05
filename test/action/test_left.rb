require "minitest/autorun"
require_relative '../../lib/action/left.rb'
require_relative '../../lib/robot/robot.rb'

class TestLeft < Minitest::Test
  attr_reader :left

  def setup
    @left = Game::Left.new
  end


  def test_act_when_allowed
    robot = Game::Robot.new
    robot.stub :allowed_to_move?, (true) do
      left.act(robot, "LEFT")
      assert_equal 0, robot.x
      assert_equal 0, robot.y
      assert_equal "NORTH", robot.direction
    end
  end

  def test_act_when_disallowed
    robot = Game::Robot.new
    robot.stub :allowed_to_move?, (false) do
      left.act(robot, "LEFT")
      assert_equal 0, robot.x
      assert_equal 0, robot.y
      assert_equal "EAST", robot.direction
    end
  end
end