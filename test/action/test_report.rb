require "minitest/autorun"
require_relative '../../lib/action/report.rb'
require_relative '../../lib/robot/robot.rb'

class TestReport< Minitest::Test
  attr_reader :report

  def setup
    @report = Game::Report.new
  end


  def test_act
    robot = Game::Robot.new
    robot.stub :invalid_move?, (false) do
      report.act(robot, "REPORT")
      assert_equal 0, robot.x
      assert_equal 0, robot.y
      assert_equal "EAST", robot.direction
    end
  end
end