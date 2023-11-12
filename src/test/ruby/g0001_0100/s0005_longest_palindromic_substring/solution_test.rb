require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0005_longest_palindromic_substring/solution'

class SolutionTest < Minitest::Test
  def test_longest_palindrome
    assert_equal 'bab', longest_palindrome('babad')
  end

  def test_longest_palindrome_2
    assert_equal 'bb', longest_palindrome('cbbd')
  end
end
