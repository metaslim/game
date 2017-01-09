module RobotMaker
  def RobotMaker.create(x=0, y=0, direction="EAST", allowed_to_move=true)
    Class.new {
      define_method(:allowed_to_move?) { allowed_to_move }
      define_method(:x) { x }
      define_method(:y) { y }
      define_method(:direction) { direction }
      define_method(:enter_arena) { false }
    }.new
  end
end
