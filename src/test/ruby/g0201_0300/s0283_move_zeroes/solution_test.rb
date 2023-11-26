require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0283_move_zeroes/solution'

class SolutionTest < Minitest::Test
  def test_move_zeroes
    array = [0, 1, 0, 3, 12]
    move_zeroes(array)
    assert_equal [1, 3, 12, 0, 0], array
  end

  def test_move_zeroes2
    array = [0]
    move_zeroes(array)
    assert_equal [0], array
  end
end
