require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0200_number_of_islands/solution'

class SolutionTest < Minitest::Test
  def test_num_islands
    input = [
        ['1', '1', '1', '1', '0'],
        ['1', '1', '0', '1', '0'],
        ['1', '1', '0', '0', '0'],
        ['0', '0', '0', '0', '0']
    ]
    assert_equal 1, num_islands(input)
  end

  def test_num_islands2
    input = [
        ['1', '1', '0', '0', '0'],
        ['1', '1', '0', '0', '0'],
        ['0', '0', '1', '0', '0'],
        ['0', '0', '0', '1', '1']
    ]
    assert_equal 3, num_islands(input)
  end
end
