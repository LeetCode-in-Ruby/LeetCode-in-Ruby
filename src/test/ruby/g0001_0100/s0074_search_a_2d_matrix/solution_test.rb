require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0074_search_a_2d_matrix/solution'

class SolutionTest < Minitest::Test
  def test_search_matrix
    input = [[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]]
    assert_equal true, search_matrix(input, 3)
  end

  def test_search_matrix2
    input = [[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]]
    assert_equal false, search_matrix(input, 13)
  end
end
