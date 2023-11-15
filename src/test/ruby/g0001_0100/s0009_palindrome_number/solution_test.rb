require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0009_palindrome_number/solution'

class SolutionTest < Minitest::Test
  def test_is_palindrome
    assert_equal true, is_palindrome(121)
  end

  def test_is_palindrome2
    assert_equal false, is_palindrome(-121)
  end

  def test_is_palindrome3
    assert_equal false, is_palindrome(10)
  end
end
