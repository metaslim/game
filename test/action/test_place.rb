require "minitest/autorun"
require_relative '../../lib/action/place.rb'
require_relative '../../lib/robot/robot.rb'

class TestPlace < Minitest::Test
  attr_reader :place

  def setup
    @place = Game::Place.new
  end


  def test_act
    robot = Game::Robot.new
    robot.stub :invalid_move?, (false) do
      place.act(robot, "PLACE 1,3,WEST")
      assert_equal 1, robot.x
      assert_equal 3, robot.y
      assert_equal "WEST", robot.direction
    end
  end
end