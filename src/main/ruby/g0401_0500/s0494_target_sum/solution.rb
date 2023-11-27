# #Medium #Top_100_Liked_Questions #Array #Dynamic_Programming #Backtracking
# #Big_O_Time_O(n*(sum+s))_Space_O(n*(sum+s))
# #2023_11_27_Time_149_ms_(76.92%)_Space_211.8_MB_(100.00%)

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def find_target_sum_ways(nums, s)
  sum = nums.sum
  s = s.abs

  # Invalid s, just return 0
  return 0 if s > sum || (sum + s).odd?

  dp = Array.new((sum + s) / 2 + 1) {Array.new(nums.length + 1, 0)}
  dp[0][0] = 1

  # empty knapsack must be processed specially
  nums.each_with_index do |num, i|
    dp[0][i + 1] = num.zero? ? dp[0][i] * 2 : dp[0][i]
  end

  (1...dp.length).each do |i|
    (0...nums.length).each do |j|
      dp[i][j + 1] += dp[i][j]
      dp[i][j + 1] += dp[i - nums[j]][j] if nums[j] <= i
    end
  end

  dp[(sum + s) / 2][nums.length]
end
