require 'minitest/autorun'
require_relative '../../../../main/ruby/g0301_0400/s0338_counting_bits/solution'

class SolutionTest < Minitest::Test
  def test_count_bits
    assert_equal [0, 1, 1], count_bits(2)
  end

  def test_count_bits2
    assert_equal [0, 1, 1, 2, 1, 2], count_bits(5)
  end
end
