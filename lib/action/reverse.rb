require_relative 'action.rb'

module Game
  class Reverse < Game::Action

    REVERSE_DIRECTION_OF = {
      "WEST" => "EAST",
      "EAST" => "WEST",
      "NORTH" => "SOUTH",
      "SOUTH" => "NORTH"
    }

    private
    def execute_command(x, y, direction)
      return x, y, Game::Reverse::REVERSE_DIRECTION_OF[direction]
    end
  end
end