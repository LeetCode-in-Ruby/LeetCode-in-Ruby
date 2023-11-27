require_relative "../../../../main/ruby/com_github_leetcode/random/node"
require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0138_copy_list_with_random_pointer/solution'

class SolutionTest < Minitest::Test
  def test_copyRandomList
    node7 = Node.new(7)
    node13 = Node.new(13)
    node11 = Node.new(11)
    node10 = Node.new(10)
    node1 = Node.new(1)
    node7.next = node13
    node13.next = node11
    node11.next = node10
    node10.next = node1
    node1.next = nil
    node7.random = nil
    node13.random = node7
    node11.random = node1
    node10.random = node11
    node1.random = node7
    expected_result = '[[7, nil],[13, 0],[11, 4],[10, 2],[1, 0]]'
    assert_equal expected_result, copyRandomList(node7).to_s
  end

  def test_copyRandomList_2
    node1 = Node.new(1)
    node2 = Node.new(2)
    node1.next = node2
    node1.random = node1
    node2.next = nil
    node2.random = node2
    expected_result = '[[1, 0],[2, 1]]'
    assert_equal expected_result, copyRandomList(node1).to_s
  end

  def test_copyRandomList_3
    node31 = Node.new(3)
    node32 = Node.new(3)
    node33 = Node.new(3)
    node31.next = node32
    node31.random = nil
    node32.next = node33
    node32.random = node31
    node33.next = nil
    node33.random = nil
    expected_result = '[[3, nil],[3, 0],[3, nil]]'
    assert_equal expected_result, copyRandomList(node31).to_s
  end
end
