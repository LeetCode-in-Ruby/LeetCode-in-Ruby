require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0152_maximum_product_subarray/solution'

class SolutionTest < Minitest::Test
  def test_max_product
    assert_equal 6, max_product([2, 3, -2, 4])
  end

  def test_max_product2
    assert_equal 0, max_product([-2, 0, -1])
  end
end
