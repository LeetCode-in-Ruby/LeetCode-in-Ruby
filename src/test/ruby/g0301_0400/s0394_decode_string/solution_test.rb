require 'minitest/autorun'
require_relative '../../../../main/ruby/g0301_0400/s0394_decode_string/solution'

class SolutionTest < Minitest::Test
  def test_decode_string
    assert_equal 'aaabcbc', decode_string('3[a]2[bc]')
  end

  def test_decode_string_2
    assert_equal 'accaccacc', decode_string('3[a2[c]]')
  end

  def test_decode_string_3
    assert_equal 'abcabccdcdcdef', decode_string('2[abc]3[cd]ef')
  end

  def test_decode_string_4
    assert_equal 'abccdcdcdxyz', decode_string('abc3[cd]xyz')
  end
end
