require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0155_min_stack/minstack'

class MinStackTest < Minitest::Test
  def test_min_stack
    min_stack = MinStack.new
    min_stack.push(-2)
    min_stack.push(0)
    min_stack.push(-3)
    # return -3
    assert_equal(-3, min_stack.get_min)
    min_stack.pop
    # return 0
    assert_equal(0, min_stack.top)
    # return -2
    assert_equal(-2, min_stack.get_min)
  end
end
