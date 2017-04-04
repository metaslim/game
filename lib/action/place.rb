require_relative 'actionable.rb'

module Game
  class Place < Game::Actionable

    def act(robot, command)
      super(robot, command) { robot.enter_arena }
    end

    private
    def execute_command(x, y, direction)
      return x, y, direction
    end

    def command_pattern
       /^PLACE\s+(\d+),(\d+),(WEST|EAST|NORTH|SOUTH)$/
    end
  end
end