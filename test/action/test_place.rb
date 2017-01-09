require "minitest/autorun"
require_relative '../../lib/action/place.rb'
require_relative './robot_maker.rb'

class TestPlace < Minitest::Test
  attr_reader :place

  def setup
    @place = Game::Place.new
  end


  def test_act_when_allowed
    robot = RobotMaker::create(1, 3, "WEST")

    place.act(robot, "PLACE 1,3,WEST")
    assert_equal 1, robot.x
    assert_equal 3, robot.y
    assert_equal "WEST", robot.direction
  end


  def test_act_when_disallowed
    robot = RobotMaker::create(0, 0, "EAST", false)

    place.act(robot, "PLACE 1,3,WEST")
    assert_equal 0, robot.x
    assert_equal 0, robot.y
    assert_equal "EAST", robot.direction
  end
end