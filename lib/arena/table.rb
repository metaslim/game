require_relative 'arena.rb'

module Game
  class Table < Game::Arena
    def initialize
      @width = 5
      @height = 5
    end

    def invalid_move?(x,y)
      out_of_bound?(x,y) || negative?(x,y)
    end

    private
    def out_of_bound?(x,y)
      x >= width || y >= height
    end

    def negative?(x,y)
      x < 0 || y < 0
    end
  end
end