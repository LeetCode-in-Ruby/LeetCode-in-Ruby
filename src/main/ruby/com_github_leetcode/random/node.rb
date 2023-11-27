class Node
  attr_accessor :val, :next, :random

  def initialize(val = 0, _next = nil, _random = nil)
    @val = val
    @next = _next
    @random = _random
  end
end
