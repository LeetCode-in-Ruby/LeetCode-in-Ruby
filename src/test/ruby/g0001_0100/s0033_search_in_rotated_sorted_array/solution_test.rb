require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0033_search_in_rotated_sorted_array/solution'

class SolutionTest < Minitest::Test
  def test_search
    assert_equal 4, search([4, 5, 6, 7, 0, 1, 2], 0)
  end

  def test_search2
    assert_equal(-1, search([4, 5, 6, 7, 0, 1, 2], 3))
  end

  def test_search3
    assert_equal(-1, search([1], 0))
  end
end
