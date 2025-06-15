# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Dynamic_Programming
# #LeetCode_75_DP/1D #Algorithm_I_Day_12_Dynamic_Programming #Dynamic_Programming_I_Day_3
# #Level_2_Day_12_Dynamic_Programming #Udemy_Dynamic_Programming #Top_Interview_150_1D_DP
# #Big_O_Time_O(n)_Space_O(n) #2023_11_25_Time_41_ms_(99.28%)_Space_210.9_MB_(86.23%)

# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.empty?
  return nums[0] if nums.length == 1
  return [nums[0], nums[1]].max if nums.length == 2

  profit = Array.new(nums.length)
  profit[0] = nums[0]
  profit[1] = [nums[1], nums[0]].max

  (2...nums.length).each do |i|
    profit[i] = [profit[i - 1], nums[i] + profit[i - 2]].max
  end

  profit[nums.length - 1]
end
