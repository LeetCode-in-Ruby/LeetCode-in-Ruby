require 'minitest/autorun'
require_relative '../../../../main/ruby/g1101_1200/s1143_longest_common_subsequence/solution'

class SolutionTest < Minitest::Test
  def test_longest_common_subsequence
    assert_equal 3, longest_common_subsequence('abcde', 'ace')
  end

  def test_longest_common_subsequence_2
    assert_equal 3, longest_common_subsequence('abc', 'abc')
  end

  def test_longest_common_subsequence_3
    assert_equal 0, longest_common_subsequence('abc', 'def')
  end
end
