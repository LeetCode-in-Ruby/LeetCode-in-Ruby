# #Easy #Dynamic_Programming #Bit_Manipulation #LeetCode_75_Bit_Manipulation
# #Udemy_Bit_Manipulation #Big_O_Time_O(num)_Space_O(num)
# #2023_11_26_Time_90_ms_(96.34%)_Space_215.9_MB_(60.98%)

# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
  result = Array.new(num + 1, 0)
  border_pos = 1
  incr_pos = 1

  (1..num).each do |i|
    # when we reach pow of 2, reset border_pos and incr_pos
    if incr_pos == border_pos
      result[i] = 1
      incr_pos = 1
      border_pos = i
    else
      result[i] = 1 + result[incr_pos]
      incr_pos += 1
    end
  end

  result
end
