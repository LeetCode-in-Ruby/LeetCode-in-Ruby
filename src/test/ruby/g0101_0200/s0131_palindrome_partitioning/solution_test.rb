require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0131_palindrome_partitioning/solution'

class SolutionTest < Minitest::Test
  def test_partition
    expected = [["a", "a", "b"], ["aa", "b"]]
    assert_equal expected, partition("aab")
  end

  def test_partition2
    expected = [["a"]]
    assert_equal expected, partition("a")
  end
end
