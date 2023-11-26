require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0295_find_median_from_data_stream/medianfinder'

class MedianFinderTest < Minitest::Test
  def test_median_finder
    median_finder = MedianFinder.new
    median_finder.add_num(1)
    median_finder.add_num(2)
    assert_equal 1.5, median_finder.find_median
    median_finder.add_num(3)
    assert_equal 2.0, median_finder.find_median
  end

  def test_median_finder2
    median_finder = MedianFinder.new
    median_finder.add_num(1)
    median_finder.add_num(3)
    median_finder.add_num(-1)
    assert_equal 1.0, median_finder.find_median
  end
end
