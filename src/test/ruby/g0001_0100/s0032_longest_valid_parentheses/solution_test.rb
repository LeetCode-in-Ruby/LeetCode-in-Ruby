require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0032_longest_valid_parentheses/solution'

class SolutionTest < Minitest::Test
  def test_longest_valid_parentheses
    assert_equal 2, longest_valid_parentheses('(()')
  end

  def test_longest_valid_parentheses2
    assert_equal 4, longest_valid_parentheses(')()())')
  end

  def test_longest_valid_parentheses3
    assert_equal 0, longest_valid_parentheses('')
  end
end
