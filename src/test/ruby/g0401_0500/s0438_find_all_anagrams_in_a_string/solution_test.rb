require 'minitest/autorun'
require_relative '../../../../main/ruby/g0401_0500/s0438_find_all_anagrams_in_a_string/solution'

class SolutionTest < Minitest::Test
  def test_find_anagrams
    assert_equal [0, 6], find_anagrams('cbaebabacd', 'abc')
  end

  def test_find_anagrams_2
    assert_equal [0, 1, 2], find_anagrams('abab', 'ab')
  end
end
