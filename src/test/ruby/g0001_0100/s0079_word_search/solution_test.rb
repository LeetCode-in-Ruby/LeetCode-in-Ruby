require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0079_word_search/solution'

class SolutionTest < Minitest::Test
  def test_exist
    input = [['A', 'B', 'C', 'E'], ['S', 'F', 'C', 'S'], ['A', 'D', 'E', 'E']]
    assert_equal true, exist(input, "ABCCED")
  end

  def test_exist2
    input = [['A', 'B', 'C', 'E'], ['S', 'F', 'C', 'S'], ['A', 'D', 'E', 'E']]
    assert_equal true, exist(input, "SEE")
  end

  def test_exist3
    input = [['A', 'B', 'C', 'E'], ['S', 'F', 'C', 'S'], ['A', 'D', 'E', 'E']]
    assert_equal false, exist(input, "ABCB")
  end
end
