require "minitest/autorun"
require_relative '../../lib/arena/circle.rb'

class Table < Minitest::Test
  attr_reader :table

  def setup
    @table = Game::Circle.new
  end

  def test_invalid_move?
    assert_equal true, table.invalid_move?(11,11)
  end

  def test_valid_move?
    assert_equal false, table.invalid_move?(7,7)
  end
end