# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Dynamic_Programming
# #Divide_and_Conquer #Data_Structure_I_Day_1_Array #Dynamic_Programming_I_Day_5
# #Udemy_Famous_Algorithm #Top_Interview_150_Kadane's_Algorithm #Big_O_Time_O(n)_Space_O(1)
# #2023_11_21_Time_125_ms_(81.22%)_Space_218.9_MB_(87.31%)

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  sum_so_far = 0
  max_sum = -Float::INFINITY
  end_ptr = 0

  while end_ptr < nums.length
    sum_so_far += nums[end_ptr]
    max_sum = [max_sum, sum_so_far].max
    sum_so_far = 0 if sum_so_far < 0

    end_ptr += 1
  end

  max_sum
end
