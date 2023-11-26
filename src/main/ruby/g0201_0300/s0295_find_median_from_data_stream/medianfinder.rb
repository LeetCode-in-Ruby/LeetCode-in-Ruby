# #Hard #Top_100_Liked_Questions #Top_Interview_Questions #Sorting #Two_Pointers #Design
# #Heap_Priority_Queue #Data_Stream #Big_O_Time_O(n*log_n)_Space_O(n)
# #2023_11_26_Time_314_ms_(95.00%)_Space_229.3_MB_(70.00%)

class MedianFinder
  def initialize()
    @arr = []
  end

=begin
    :type num: Integer
    :rtype: Void
=end
  def add_num(num)
    placement = @arr.bsearch_index {|a| num < a}

    if placement.nil?
      @arr << num
    elsif placement == 0
      @arr.unshift(num)
    else
      @arr.insert(placement, num)
    end
  end

=begin
    :rtype: Float
=end
  def find_median()
    if @arr.size % 2 == 0
      mid = @arr.size / 2
      (@arr[mid] + @arr[mid - 1]).fdiv(2)
    else
      mid = @arr.size / 2
      @arr[mid]
    end
  end
end

# Your MedianFinder object will be instantiated and called as such:
# obj = MedianFinder.new()
# obj.add_num(num)
# param_2 = obj.find_median()
