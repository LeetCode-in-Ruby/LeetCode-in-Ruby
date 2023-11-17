require 'minitest/autorun'
require_relative '../../../../main/ruby/g0001_0100/s0022_generate_parentheses/solution'

class SolutionTest < Minitest::Test
  def test_generate_parenthesis
    expected_result = ['()()()', '()(())', '(())()', '(()())', '((()))']
    assert_equal expected_result, generate_parenthesis(3)
  end

  def test_generate_parenthesis2
    assert_equal ['()'], generate_parenthesis(1)
  end
end
