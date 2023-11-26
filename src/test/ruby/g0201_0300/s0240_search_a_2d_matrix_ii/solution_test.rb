require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0240_search_a_2d_matrix_ii/solution'

class SolutionTest < Minitest::Test
  def test_search_matrix
    matrix = [
        [1, 4, 7, 11, 15],
        [2, 5, 8, 12, 19],
        [3, 6, 9, 16, 22],
        [10, 13, 14, 17, 24],
        [18, 21, 23, 26, 30]
    ]
    result = search_matrix(matrix, 5)
    assert_equal true, result
  end

  def test_search_matrix2
    matrix = [
        [1, 4, 7, 11, 15],
        [2, 5, 8, 12, 19],
        [3, 6, 9, 16, 22],
        [10, 13, 14, 17, 24],
        [18, 21, 23, 26, 30]
    ]
    result = search_matrix(matrix, 20)
    assert_equal false, result
  end
end
