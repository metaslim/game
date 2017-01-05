require_relative 'lib/arena/table.rb'
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
    @board = Game::Table.new
    @robot = Game::Robot.new
  end

  def setup_robot_action
    robot.add_action(Game::Place.new)
    robot.add_action(Game::Move.new)
    robot.add_action(Game::Right.new)
    robot.add_action(Game::Left.new)
    robot.add_action(Game::Report.new)
  end

  def robot_play_in_arena
    robot.add_arena(board)
  end

  def play
    setup_robot_action
    robot_play_in_arena
    puts "ENTER COMMAND"
    command = gets
    until command.chomp == 'QUIT'
      robot.execute command.chomp
      command = gets
    end

    # robot.execute("PLACE 1,2,WEST")
    # robot.execute("REPORT")
    # robot.execute("MOVE")
    # robot.execute("REPORT")
    # robot.execute("RIGHT")
    # robot.execute("REPORT")
    # robot.execute("LEFT")
    # robot.execute("REPORT")
    # robot.execute("RIGHT")
    # robot.execute("REPORT")
    # robot.execute("LEFT")
    # robot.execute("REPORT")

  end
end

Main.run