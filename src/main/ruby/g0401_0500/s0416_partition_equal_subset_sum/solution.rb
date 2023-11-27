# #Medium #Top_100_Liked_Questions #Array #Dynamic_Programming #Level_2_Day_13_Dynamic_Programming
# #Big_O_Time_O(n*sums)_Space_O(n*sums) #2023_11_27_Time_1023_ms_(60.38%)_Space_212.3_MB_(88.68%)

# @param {Integer[]} nums
# @return {Boolean}
def can_partition(nums)
  sums = nums.sum
  return false if sums.odd?

  sums /= 2
  dp = Array.new(sums + 1, false)
  dp[0] = true

  nums.each do |num|
    sums.downto(num) do |sum|
      dp[sum] = dp[sum] || dp[sum - num]
    end
  end

  dp[sums]
end
