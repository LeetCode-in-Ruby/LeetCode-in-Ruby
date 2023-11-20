require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0051_n_queens/solution'

class SolutionTest < Minitest::Test
  def test_solve_n_queens
    expected = [
        [".Q..", "...Q", "Q...", "..Q."],
        ["..Q.", "Q...", "...Q", ".Q.."]
    ]
    actual = solve_n_queens(4)
    assert_equal expected, actual
  end

  def test_solve_n_queens2
    expected = [["Q"]]
    actual = solve_n_queens(1)
    assert_equal expected, actual
  end
end
