require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0121_best_time_to_buy_and_sell_stock/solution'

class SolutionTest < Minitest::Test
  def test_max_profit
    assert_equal 5, max_profit([7, 1, 5, 3, 6, 4])
  end

  def test_max_profit2
    assert_equal 0, max_profit([7, 6, 4, 3, 1])
  end
end
