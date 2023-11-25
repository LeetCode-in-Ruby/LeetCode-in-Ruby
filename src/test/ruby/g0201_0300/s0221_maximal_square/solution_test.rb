require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0221_maximal_square/solution'

class SolutionTest < Minitest::Test
  def test_maximal_square
    input = [
        ['1', '0', '1', '0', '0'],
        ['1', '0', '1', '1', '1'],
        ['1', '1', '1', '1', '1'],
        ['1', '0', '0', '1', '0']
    ]
    assert_equal 4, maximal_square(input)
  end

  def test_maximal_square_2
    input = [['0', '1'], ['1', '0']]
    assert_equal 1, maximal_square(input)
  end

  def test_maximal_square_3
    input = [['0']]
    assert_equal 0, maximal_square(input)
  end
end
