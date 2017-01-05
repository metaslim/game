require_relative 'action.rb'

module Game
  class Place < Game::Action

    def act(robot, command)
      super(robot, command) { robot.enter_arena }
    end

    private
    def execute_command(x, y, direction)
      if command =~ command_pattern
        return $1.to_i, $2.to_i, $3
      end
    end

    def command_pattern
       /^PLACE\s+(\d+),(\d+),(WEST|EAST|NORTH|SOUTH)$/
    end
  end
end