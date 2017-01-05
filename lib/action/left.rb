require_relative 'action.rb'

module Game
  class Left < Game::Action

    LEFT_DIRECTION_OF = {
      "WEST" => "SOUTH",
      "EAST" => "NORTH",
      "NORTH" => "WEST",
      "SOUTH" => "EAST"
    }

    private
    def execute_command(x, y, direction)
      return x, y, Game::Left::LEFT_DIRECTION_OF[direction]
    end
  end
end