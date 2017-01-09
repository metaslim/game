require "minitest/autorun"
require_relative '../../lib/action/report.rb'
require_relative './robot_maker.rb'

class TestReport< Minitest::Test
  attr_reader :report

  def setup
    @report = Game::Report.new
  end


  def test_act_when_allowed
    robot = RobotMaker::create(0, 0, "EAST")

    assert_output(/Output:\s0,0,EAST/) { report.act(robot, "REPORT") }
    assert_equal 0, robot.x
    assert_equal 0, robot.y
    assert_equal "EAST", robot.direction
  end

  def test_act_when_disallowed
    robot = RobotMaker::create(0, 0, "EAST", false)

    assert_output(/Output:\s0,0,EAST/) { report.act(robot, "REPORT") }
    assert_equal 0, robot.x
    assert_equal 0, robot.y
    assert_equal "EAST", robot.direction
  end
end