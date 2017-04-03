require "minitest/autorun"
require_relative '../../lib/action/place.rb'
require_relative './robot_maker.rb'

class TestPlace < Minitest::Test
  attr_reader :place

  def setup
    @place = Game::Place.new
  end


  def test_act
    robot = RobotMaker::create(1, 3, "WEST")

    x, y, direction = place.act(robot, "PLACE 1,3,WEST")
    assert_equal 1, x
    assert_equal 3, y
    assert_equal "WEST", direction
  end
end