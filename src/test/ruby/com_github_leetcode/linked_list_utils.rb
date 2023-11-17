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

  def self.create_singly_linked_list(list_values)
    raise ArgumentError, 'Please pass in valid list_values to create a singly linked list.' if list_values.nil? || list_values.empty?

    head = ListNode.new(list_values.first)
    tmp = head
    (1...list_values.length).each do |i|
      next_node = ListNode.new(list_values[i])
      tmp.next = next_node
      tmp = tmp.next
    end
    head
  end
end
