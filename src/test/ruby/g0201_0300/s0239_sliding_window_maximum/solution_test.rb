require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0239_sliding_window_maximum/solution'

class SolutionTest < Minitest::Test
  def test_max_sliding_window
    result = max_sliding_window([1, 3, -1, -3, 5, 3, 6, 7], 3)
    assert_equal [3, 3, 5, 5, 6, 7], result
  end

  def test_max_sliding_window2
    result = max_sliding_window([1], 1)
    assert_equal [1], result
  end
end
