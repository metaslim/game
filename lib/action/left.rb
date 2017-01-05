require_relative 'action.rb'

module Game
  class Left < Game::Action

    private
    def execute_command(x, y, direction)
      direction = case direction
      when "WEST"
        "SOUTH"
      when "EAST"
        "NORTH"
      when "NORTH"
        "WEST"
      when "SOUTH"
        "EAST"
      end
      return x, y, direction
    end
  end
end