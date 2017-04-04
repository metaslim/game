require_relative 'actionable.rb'

module Game
  class Report < Game::Actionable
    def execute_command(x, y, direction)
      puts "Output: #{x},#{y},#{direction}"
      return x, y, direction
    end
  end
end