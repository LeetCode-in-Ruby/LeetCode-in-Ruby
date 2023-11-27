require 'minitest/autorun'
require_relative '../../../../main/ruby/g0701_0800/s0763_partition_labels/solution'

class SolutionTest < Minitest::Test
  def test_partition_labels
    assert_equal [9, 7, 8], partition_labels('ababcbacadefegdehijhklij')
  end

  def test_partition_labels_2
    assert_equal [10], partition_labels('eccbbbbdec')
  end
end
