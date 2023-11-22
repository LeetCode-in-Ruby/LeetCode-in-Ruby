# #Hard #Top_100_Liked_Questions #Top_Interview_Questions #Array #Stack #Monotonic_Stack
# #Big_O_Time_O(n_log_n)_Space_O(log_n) #2023_11_22_Time_197_ms_(98.25%)_Space_223.4_MB_(24.56%)

# @param {Integer[]} heights
# @return {Integer}
def largest_rectangle_area(heights)
  area = 0
  stack = []
  return 0 if heights.empty?
  return heights[0] * heights.length if heights.uniq.length == 1

  heights.each.with_index do |height, index|
    start = index
    while !stack.empty? && stack.last[1] > height do
      i, h = stack.pop
      area = [area, h * (index - i)].max
      start = i
    end
    stack << [start, height]
  end

  stack.each do |i, s|
    area = [area, s * (heights.length - i)].max
  end

  area
end
