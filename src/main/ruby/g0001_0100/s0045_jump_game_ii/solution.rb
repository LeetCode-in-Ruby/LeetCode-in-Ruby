# #Medium #Top_100_Liked_Questions #Array #Dynamic_Programming #Greedy
# #Algorithm_II_Day_13_Dynamic_Programming #Dynamic_Programming_I_Day_4
# #Big_O_Time_O(n)_Space_O(1) #2023_11_19_Time_68_ms_(75.23%)_Space_211.9_MB_(79.82%)

# @param {Integer[]} nums
# @return {Integer}
def jump(nums)
  length = 0
  max_length = 0
  min_jump = 0

  (0..nums.length - 2).each do |i|
    length -= 1
    max_length -= 1
    max_length = [max_length, nums[i]].max

    if length <= 0
      length = max_length
      min_jump += 1
    end

    return min_jump if length >= nums.length - i - 1
  end

  min_jump
end
