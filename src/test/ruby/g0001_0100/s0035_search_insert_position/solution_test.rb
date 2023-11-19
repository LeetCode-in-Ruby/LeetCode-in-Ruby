require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0035_search_insert_position/solution'

class SolutionTest < Minitest::Test
  def test_search_insert
    assert_equal 2, search_insert([1, 3, 5, 6], 5)
  end

  def test_search_insert2
    assert_equal 1, search_insert([1, 3, 5, 6], 2)
  end

  def test_search_insert3
    assert_equal 4, search_insert([1, 3, 5, 6], 7)
  end
end
