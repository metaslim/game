module Game
  class Actionable
    attr_reader :command

    def act(robot, command)
      @command = command
      if valid_command?
        yield if block_given?
        execute_command(robot.x, robot.y, robot.direction)
      end
    end

    private
    def command_pattern
       /^#{self.class.name.split('::').last.upcase}$/
    end

    def valid_command?
      command =~ command_pattern
    end

    def execute_command(x, y, direction)
      raise NotImplementedError
    end
  end
end