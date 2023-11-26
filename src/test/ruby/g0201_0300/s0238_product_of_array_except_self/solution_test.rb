require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0238_product_of_array_except_self/solution'

class SolutionTest < Minitest::Test
  def test_product_except_self
    result = product_except_self([1, 2, 3, 4])
    assert_equal [24, 12, 8, 6], result
  end

  def test_product_except_self2
    result = product_except_self([-1, 1, 0, -3, 3])
    assert_equal [0, 0, 9, 0, 0], result
  end
end
