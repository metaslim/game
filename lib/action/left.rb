require_relative 'actionable.rb'

module Game
  class Left < Game::Actionable

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