require_relative 'action.rb'

module Game
  class Move < Game::Action
    SPEED = 1

    MOVE_FROM = {
      "WEST" => lambda { |x,y| return x -= Game::Move::SPEED, y },
      "EAST" => lambda { |x,y| return x += Game::Move::SPEED, y  },
      "NORTH" => lambda { |x,y| return x, y += Game::Move::SPEED },
      "SOUTH" => lambda { |x,y| return x, y -= Game::Move::SPEED }
    }

    private
    def execute_command(x, y, direction)
      return Game::Move::MOVE_FROM[direction].call(x,y) << direction
    end
  end
end