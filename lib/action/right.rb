require_relative 'action.rb'

module Game
  class Right < Game::Action

    private
    def execute_command(x, y, direction)
      direction = case direction
      when "WEST"
        "NORTH"
      when "EAST"
        "SOUTH"
      when "NORTH"
        "EAST"
      when "SOUTH"
        "WEST"
      end
      return x, y, direction
    end
  end
end