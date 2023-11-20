require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0055_jump_game/solution'

class SolutionTest < Minitest::Test
  def test_can_jump
    assert_equal true, can_jump([2, 3, 1, 1, 4])
  end

  def test_can_jump2
    assert_equal false, can_jump([3, 2, 1, 0, 4])
  end
end
