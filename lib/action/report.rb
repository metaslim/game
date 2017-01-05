require_relative 'action.rb'

module Game
  class Report < Game::Action
    def execute_command(x, y, direction)
      puts "Output: #{x},#{y},#{direction}"
      return x, y, direction
    end
  end
end