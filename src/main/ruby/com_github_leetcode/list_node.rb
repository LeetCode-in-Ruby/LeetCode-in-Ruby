# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(x)
    @val = x
    @next = nil
  end

  def to_a
    result = []
    current = self
    while current
      result << current.val
      current = current.next
    end
    result
  end
end
