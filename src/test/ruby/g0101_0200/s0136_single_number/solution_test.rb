require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0136_single_number/solution'

class SolutionTest < Minitest::Test
  def test_single_number
    assert_equal 1, single_number([2, 2, 1])
  end

  def test_single_number2
    assert_equal 4, single_number([4, 1, 2, 1, 2])
  end

  def test_single_number3
    assert_equal 1, single_number([1])
  end
end
