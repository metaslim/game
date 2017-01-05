module Game
  class Arena
    attr_reader :width, :height

    def invalid_move?(x,y)
       raise NotImplementedError
    end
  end
end