require "minitest/autorun"
require 'minitest/mock'
require_relative '../../lib/robot/robot.rb'

class TestRobot < Minitest::Test
  attr_reader :robot

  def setup
    @robot = Game::Robot.new
  end

  def test_robot_created
    assert_equal 0, robot.x
    assert_equal 0, robot.y
    assert_equal "EAST", robot.direction
  end

  def test_add_action
    jump = Object.new
    robot.add_action(jump)
    assert_equal 1, robot.actions.size
  end

  def test_add_arena
    mock_arena = Object.new
    robot.add_arena(mock_arena)
    assert_equal mock_arena.object_id, robot.arena.object_id
  end

  def test_move_and_face_to
    robot.stub :invalid_move?, (false) do
      robot.move_and_face_to(3, 4, "WEST")
      assert_equal 3, robot.x
      assert_equal 4, robot.y
      assert_equal "WEST", robot.direction
    end
  end

  def test_execute
    jump = MiniTest::Mock.new
    jump.expect(:act, [0,0,"EAST"], [robot, "JUMP"])
    robot.add_action(jump)
    robot.execute "JUMP"
    assert jump.verify
  end
end