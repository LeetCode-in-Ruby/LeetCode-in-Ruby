require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0062_unique_paths/solution'

class SolutionTest < Minitest::Test
  def test_unique_paths
    expected = 28
    actual = unique_paths(3, 7)
    assert_equal expected, actual
  end

  def test_unique_paths2
    expected = 3
    actual = unique_paths(3, 2)
    assert_equal expected, actual
  end
end
