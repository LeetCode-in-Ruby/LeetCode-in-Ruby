require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0287_find_the_duplicate_number/solution'

class SolutionTest < Minitest::Test
  def test_find_duplicate
    assert_equal 2, find_duplicate([1, 3, 4, 2, 2])
  end

  def test_find_duplicate2
    assert_equal 3, find_duplicate([3, 1, 3, 4, 2])
  end

  def test_find_duplicate3
    assert_equal 1, find_duplicate([1, 1])
  end

  def test_find_duplicate4
    assert_equal 1, find_duplicate([1, 1, 2])
  end
end
