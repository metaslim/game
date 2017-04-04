require_relative 'arenable.rb'

module Game
  class Circle < Game::Arenable

    CENTER_X = 0
    CENTER_Y = 0
    RADIUS = 5

    def invalid_move?(x,y)
      square_dist = (CENTER_X - x) ** 2 + (CENTER_Y - y) ** 2
      square_dist > RADIUS ** 2
    end

  end
end