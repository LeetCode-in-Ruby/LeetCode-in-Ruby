require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0011_container_with_most_water/solution'

class SolutionTest < Minitest::Test
  def test_max_area
    assert_equal 49, max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])
  end

  def test_max_area2
    assert_equal 1, max_area([1, 1])
  end
end