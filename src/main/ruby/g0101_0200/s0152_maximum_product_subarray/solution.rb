# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Dynamic_Programming
# #Dynamic_Programming_I_Day_6 #Level_2_Day_13_Dynamic_Programming #Udemy_Dynamic_Programming
# #Big_O_Time_O(N)_Space_O(1) #2023_11_24_Time_63_ms_(80.30%)_Space_211.3_MB_(57.58%)

# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  result = min = max = nums.first

  nums[1..].each do |num|
    min, max = [num, min * num, max * num].minmax
    result = [result, max].max
  end

  result
end
