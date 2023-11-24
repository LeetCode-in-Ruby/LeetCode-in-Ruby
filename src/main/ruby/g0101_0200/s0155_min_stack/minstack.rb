# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Stack #Design
# #Data_Structure_II_Day_14_Stack_Queue #Programming_Skills_II_Day_18 #Level_2_Day_16_Design
# #Udemy_Design #Big_O_Time_O(1)_Space_O(N) #2023_11_24_Time_76_ms_(79.40%)_Space_215.2_MB_(6.53%)

# @param {String} string
# @return {String}
class MinStack
  class Node
    attr_accessor :min, :data, :previous_node, :next_node

    def initialize(min, data, previous_node, next_node)
      @min = min
      @data = data
      @previous_node = previous_node
      @next_node = next_node
    end
  end

  def initialize
    # no initialization needed.
  end

=begin
    :type val: Integer
    :rtype: Void
=end
  def push(val)
    if @current_node.nil?
      @current_node = Node.new(val, val, nil, nil)
    else
      @current_node.next_node = Node.new([@current_node.min, val].min, val, @current_node, nil)
      @current_node = @current_node.next_node
    end
  end

=begin
    :rtype: Integer
=end
  def pop
    @current_node = @current_node.previous_node
  end

  def top
    @current_node.data
  end

=begin
    :rtype: Integer
=end
  def get_min
    @current_node.min
  end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
