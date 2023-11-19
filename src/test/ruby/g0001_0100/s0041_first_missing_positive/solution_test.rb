require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0041_first_missing_positive/solution'

class SolutionTest < Minitest::Test
  def test_first_missing_positive
    assert_equal 3, first_missing_positive([1, 2, 0])
  end

  def test_first_missing_positive2
    assert_equal 2, first_missing_positive([3, 4, -1, 1])
  end

  def test_first_missing_positive3
    assert_equal 1, first_missing_positive([7, 8, 9, 11, 12])
  end
end
