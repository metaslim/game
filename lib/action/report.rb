require_relative 'action.rb'

module Game
  class Report < Game::Action
    def execute_command(x, y, direction)
      puts "x=#{x}\ty=#{y}\tdirection=#{direction}"
      return x, y, direction
    end
  end
end