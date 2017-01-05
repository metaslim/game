module Game
  class Robot
    attr_reader :actions, :arena, :x, :y, :direction, :in_arena

    def initialize
      @actions = []
      @in_arena = false
      @x, @y = 0, 0
      @direction = 'EAST'
    end

    def add_action(action)
      @actions << action
    end

    def add_arena(arena)
      @arena = arena
    end

    def enter_arena
      @in_arena = true
    end

    def execute(command)
      actions.each do |action|
        action.act(self, command)
      end
    end

    def move_and_face_to(x, y, direction)
      return unless in_arena
      @x, @y, @direction = x, y, direction unless invalid_move?(x,y)
    end

    private
    def invalid_move?(x,y)
      arena.invalid_move?(x,y)
    end
  end
end