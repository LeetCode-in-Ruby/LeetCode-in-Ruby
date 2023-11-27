require 'minitest/autorun'
require_relative '../../../../main/ruby/g0601_0700/s0647_palindromic_substrings/solution'

class SolutionTest < Minitest::Test
  def test_count_substrings
    assert_equal 3, count_substrings("abc")
  end

  def test_count_substrings_2
    assert_equal 6, count_substrings("aaa")
  end
end
