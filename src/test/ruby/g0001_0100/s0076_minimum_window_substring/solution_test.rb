require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0076_minimum_window_substring/solution'

class SolutionTest < Minitest::Test
  def test_min_window
    assert_equal "BANC", min_window("ADOBECODEBANC", "ABC")
  end

  def test_min_window2
    assert_equal "a", min_window("a", "a")
  end

  def test_min_window3
    assert_equal "", min_window("a", "aa")
  end
end
