require "minitest/autorun"
require_relative '../../lib/action/report.rb'
require_relative '../../lib/robot/robot.rb'

class TestReport< Minitest::Test
  attr_reader :report

  def setup
    @report = Game::Report.new
  end


  def test_act_when_allowed
    robot = Game::Robot.new
    robot.stub :allowed_to_move?, (true) do
      assert_output(/Output:\s0,0,EAST/) { report.act(robot, "REPORT") }
      assert_equal 0, robot.x
      assert_equal 0, robot.y
      assert_equal "EAST", robot.direction
    end
  end

  def test_act_when_disallowed
    robot = Game::Robot.new
    robot.stub :allowed_to_move?, (false) do
      assert_output(/Output:\s0,0,EAST/) { report.act(robot, "REPORT") }
      assert_equal 0, robot.x
      assert_equal 0, robot.y
      assert_equal "EAST", robot.direction
    end
  end
end