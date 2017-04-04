require_relative 'lib/arena/table.rb'
require_relative 'lib/arena/circle.rb'
require_relative 'lib/robot/robot.rb'
require_relative 'lib/action/action_pack.rb'

class Main
  class << self
    def run
      new.play
    end
  end

  attr_reader :board, :robot

  def initialize
    @board = Game::Circle.new
    @robot = Game::Robot.new
  end

  def setup_robot_action
    robot.add_action(Game::Place.new)
    robot.add_action(Game::Move.new)
    robot.add_action(Game::Right.new)
    robot.add_action(Game::Left.new)
    robot.add_action(Game::Report.new)
    robot.add_action(Game::Reverse.new)
  end

  def robot_select_arena
    robot.add_arena(board)
  end

  def waiting_for_command
    puts "ENTER COMMAND"
    command = gets
    until command.chomp == 'QUIT'
      robot.execute command.chomp
      command = gets
    end
  end

  def play
    setup_robot_action
    robot_select_arena
    waiting_for_command
  end
end

Main.run