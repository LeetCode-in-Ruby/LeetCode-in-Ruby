require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0073_set_matrix_zeroes/solution'

class SolutionTest < Minitest::Test
  def test_set_zeroes
    matrix = [[1, 1, 1], [1, 0, 1], [1, 1, 1]]
    set_zeroes(matrix)
    assert_equal matrix, [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
  end

  def test_set_zeroes2
    matrix = [[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]]
    set_zeroes(matrix)
    assert_equal matrix, [[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]]
  end
end
