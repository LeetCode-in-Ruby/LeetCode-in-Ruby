require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0042_trapping_rain_water/solution'

class SolutionTest < Minitest::Test
  def test_trap
    assert_equal 6, trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1])
  end

  def test_trap2
    assert_equal 9, trap([4, 2, 0, 3, 2, 5])
  end
end
