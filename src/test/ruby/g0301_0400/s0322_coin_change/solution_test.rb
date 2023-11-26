require 'minitest/autorun'
require_relative '../../../../main/ruby/g0301_0400/s0322_coin_change/solution'

class SolutionTest < Minitest::Test
  def test_coin_change
    assert_equal 3, coin_change([1, 2, 5], 11)
  end

  def test_coin_change2
    assert_equal(-1, coin_change([2], 3))
  end

  def test_coin_change3
    assert_equal 0, coin_change([1], 0)
  end
end
