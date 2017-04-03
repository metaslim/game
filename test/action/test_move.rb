require "minitest/autorun"
require_relative '../../lib/action/move.rb'
require_relative './robot_maker.rb'

class TestMove < Minitest::Test
  attr_reader :move

  def setup
    @move = Game::Move.new
  end


  def test_act
    robot = RobotMaker::create(1, 0, "EAST")

    x, y, direction = move.act(robot, "MOVE")
    assert_equal 2, x
    assert_equal 0, y
    assert_equal "EAST", direction
  end
end
