require 'minitest/autorun'
require_relative '../../../../main/ruby/g0701_0800/s0739_daily_temperatures/solution'

class SolutionTest < Minitest::Test
  def test_daily_temperatures
    assert_equal [1, 1, 4, 2, 1, 1, 0, 0], daily_temperatures([73, 74, 75, 71, 69, 72, 76, 73])
  end

  def test_daily_temperatures_2
    assert_equal [1, 1, 1, 0], daily_temperatures([30, 40, 50, 60])
  end

  def test_daily_temperatures_3
    assert_equal [1, 1, 0], daily_temperatures([30, 60, 90])
  end
end
