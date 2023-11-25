require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0198_house_robber/solution'

class SolutionTest < Minitest::Test
  def test_rob
    assert_equal 4, rob([1, 2, 3, 1])
  end

  def test_rob2
    assert_equal 12, rob([2, 7, 9, 3, 1])
  end
end
