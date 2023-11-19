require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0045_jump_game_ii/solution'

class SolutionTest < Minitest::Test
  def test_jump
    assert_equal 2, jump([2, 3, 1, 1, 4])
  end

  def test_jump2
    assert_equal 2, jump([2, 3, 0, 1, 4])
  end
end
