# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Sorting #Two_Pointers
# #Data_Structure_II_Day_2_Array #Udemy_Arrays #Big_O_Time_O(n)_Space_O(1)
# #2023_11_22_Time_54_ms_(88.46%)_Space_211.2_MB_(15.38%)

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  l = 0
  h = nums.size - 1
  i = 0
  while i <= h
    if nums[i] == 2
      nums[i] = nums[h]
      nums[h] = 2
      h -= 1
    elsif nums[i] == 0
      nums[i] = nums[l]
      nums[l] = 0
      l += 1
      i += 1
    else
      i += 1
    end
  end
end
