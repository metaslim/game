require_relative 'action.rb'

module Game
  class Move < Game::Action
    SPEED = 1

    def execute_command(x, y, direction)
      case direction
      when "WEST"
        x -= SPEED
      when "EAST"
        x += SPEED
      when "NORTH"
        y += SPEED
      when "SOUTH"
        y -= SPEED
      end
      return x, y, direction
    end
  end
end