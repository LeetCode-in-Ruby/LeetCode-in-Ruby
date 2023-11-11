require_relative "../../../main/ruby/com_github_leetcode/list_node"

class LinkedListUtils
  def self.construct_linked_list(arr)
    return nil if arr.empty?

    head = ListNode.new(arr.shift)
    current = head

    arr.each do |val|
      current.next = ListNode.new(val)
      current = current.next
    end

    head
  end
end
