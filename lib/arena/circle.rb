require_relative 'arenable.rb'

module Game
  class Circle < Game::Arenable

    CENTER_X = 0
    CENTER_Y = 0
    RADIUS = 10

    def invalid_move?(x,y)
      square_dist = (Game::Circle::CENTER_X - x) ** 2 + (Game::Circle::CENTER_Y - y) ** 2
      square_dist >= Game::Circle::RADIUS ** 2
    end

  end
end