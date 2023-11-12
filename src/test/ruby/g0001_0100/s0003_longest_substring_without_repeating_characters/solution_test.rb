require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0003_longest_substring_without_repeating_characters/solution'

class SolutionTest < Minitest::Test
  def test_length_of_longest_substring
    assert_equal 3, length_of_longest_substring('abcabcbb')
  end

  def test_length_of_longest_substring_2
    assert_equal 1, length_of_longest_substring('bbbbb')
  end

  def test_length_of_longest_substring_3
    assert_equal 3, length_of_longest_substring('pwwkew')
  end
end
