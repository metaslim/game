require "minitest/autorun"
require_relative '../../lib/arena/table.rb'

class Table < Minitest::Test
  attr_reader :table

  def setup
    @table = Game::Table.new
  end

  def test_invalid_move?
    assert_equal true, table.invalid_move?(6,6)
    assert_equal true, table.invalid_move?(-1,6)
  end

  def test_valid_move?
    assert_equal false, table.invalid_move?(0,0)
    assert_equal false, table.invalid_move?(4,3)
  end
end