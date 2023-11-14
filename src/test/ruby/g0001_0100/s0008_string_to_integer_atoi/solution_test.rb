require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0008_string_to_integer_atoi/solution'

class SolutionTest < Minitest::Test
  def test_my_atoi
    assert_equal 42, my_atoi("42")
  end

  def test_my_atoi2
    assert_equal(-42, my_atoi("   -42"))
  end

  def test_my_atoi3
    assert_equal 4193, my_atoi("4193 with words")
  end

  def test_my_atoi4
    assert_equal 0, my_atoi("words and 987")
  end

  def test_my_atoi5
    assert_equal(-2147483648, my_atoi("-91283472332"))
  end
end
