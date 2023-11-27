# #Medium #Top_100_Liked_Questions #Array #Hash_Table #Prefix_Sum #Data_Structure_II_Day_5_Array
# #Big_O_Time_O(n)_Space_O(n) #2023_11_27_Time_112_ms_(51.61%)_Space_219.1_MB_(80.65%)

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_sum(nums, k)
  temp_sum = 0
  ret = 0
  sum_count = {0 => 1}

  nums.each do |i|
    temp_sum += i
    ret += sum_count[temp_sum - k] if sum_count[temp_sum - k]
    sum_count[temp_sum] = sum_count[temp_sum].to_i + 1
  end

  ret
end
