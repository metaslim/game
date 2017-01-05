require "minitest/autorun"
require_relative '../../lib/action/move.rb'
require_relative '../../lib/robot/robot.rb'

class TestMove < Minitest::Test
  attr_reader :move

  def setup
    @move = Game::Move.new
  end


  def test_act_when_allowed
    robot = Game::Robot.new
    robot.stub :allowed_to_move?, (true) do
      move.act(robot, "MOVE")
      assert_equal 1, robot.x
      assert_equal 0, robot.y
      assert_equal "EAST", robot.direction
    end
  end

   def test_act_when_disallowed
    robot = Game::Robot.new
    robot.stub :allowed_to_move?, (false) do
      move.act(robot, "MOVE")
      assert_equal 0, robot.x
      assert_equal 0, robot.y
      assert_equal "EAST", robot.direction
    end
  end
end