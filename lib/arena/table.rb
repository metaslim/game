require_relative 'arena.rb'

module Game
  class Table < Game::Arena

    WIDTH = 5
    HEIGHT = 5

    def invalid_move?(x,y)
      out_of_bound?(x,y) || negative?(x,y)
    end

    private
    def out_of_bound?(x,y)
      x >= Game::Table::WIDTH || y >= Game::Table::HEIGHT
    end

    def negative?(x,y)
      x < 0 || y < 0
    end
  end
end