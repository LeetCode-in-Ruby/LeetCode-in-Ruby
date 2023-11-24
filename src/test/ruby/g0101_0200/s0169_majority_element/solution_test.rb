require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0169_majority_element/solution'

class SolutionTest < Minitest::Test
  def test_majority_element
    assert_equal 3, majority_element([3, 2, 3])
  end

  def test_majority_element2
    assert_equal 2, majority_element([2, 2, 1, 1, 1, 2, 2])
  end
end
