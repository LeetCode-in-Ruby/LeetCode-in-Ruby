require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0010_regular_expression_matching/solution'

class SolutionTest < Minitest::Test
  def test_is_match
    assert_equal false, is_match('aa', 'a')
  end

  def test_is_match2
    assert_equal true, is_match('aa', 'a*')
  end

  def test_is_match3
    assert_equal true, is_match('ab', '.*')
  end

  def test_is_match4
    assert_equal true, is_match('aab', 'c*a*b')
  end

  def test_is_match5
    assert_equal false, is_match('mississippi', 'mis*is*p*.')
  end
end
