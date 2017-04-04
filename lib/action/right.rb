require_relative 'actionable.rb'

module Game
  class Right < Game::Actionable

    RIGHT_DIRECTION_OF = {
      "WEST" => "NORTH",
      "EAST" => "SOUTH",
      "NORTH" => "EAST",
      "SOUTH" => "WEST"
    }


    private
    def execute_command(x, y, direction)
      return x, y, Game::Right::RIGHT_DIRECTION_OF[direction]
    end
  end
end