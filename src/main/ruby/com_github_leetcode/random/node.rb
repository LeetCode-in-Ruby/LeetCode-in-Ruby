class Node
  attr_accessor :val, :next, :random

  def initialize(val = 0, next_node = nil, random = nil)
    @val = val
    @next = next_node
    @random = random
  end

  def to_s
    result = []
    curr = self

    while curr
      result << "[#{curr.val}, #{curr.random ? find_index(curr.random) : 'nil'}]"
      curr = curr.next
    end

    '[' + result.join(',') + ']'
  end

  private

  def find_index(target)
    index = 0
    curr = self

    while curr&.next && curr != target
      index += 1
      curr = curr.next
    end

    index
  end
end
