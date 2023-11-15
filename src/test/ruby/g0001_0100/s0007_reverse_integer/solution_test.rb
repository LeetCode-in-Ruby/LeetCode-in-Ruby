require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0007_reverse_integer/solution'

class SolutionTest < Minitest::Test
  def test_reverse
    assert_equal 321, reverse(123)
  end

  def test_reverse2
    assert_equal(-321, reverse(-123))
  end

  def test_reverse3
    assert_equal 21, reverse(120)
  end
end
