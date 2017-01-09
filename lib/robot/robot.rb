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
        new_position = act(action, command)
        move_and_face_to(*new_position) unless new_position.nil?
      end
    end

    def act(action, command)
      action.act(self, command)
    end

    def move_and_face_to(x, y, direction)
      @x, @y, @direction = x, y, direction if allowed_to_move?(x,y)
    end

    private
    def allowed_to_move?(x,y)
      !invalid_move?(x,y) and in_arena?
    end

    def invalid_move?(x,y)
      arena.invalid_move?(x,y)
    end

    def in_arena?
      in_arena
    end
  end
end