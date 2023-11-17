require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0020_valid_parentheses/solution'

class SolutionTest < Minitest::Test
  def test_is_valid
    assert_equal true, is_valid('()')
  end

  def test_is_valid2
    assert_equal true, is_valid('()[]{}')
  end

  def test_is_valid3
    assert_equal false, is_valid('(]')
  end

  def test_is_valid4
    assert_equal false, is_valid('([)]')
  end

  def test_is_valid5
    assert_equal true, is_valid('{[]}')
  end
end
