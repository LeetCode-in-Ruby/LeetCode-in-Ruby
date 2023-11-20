# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Dynamic_Programming #Math
# #Combinatorics #Algorithm_II_Day_13_Dynamic_Programming #Dynamic_Programming_I_Day_15
# #Level_1_Day_11_Dynamic_Programming #Big_O_Time_O(m*n)_Space_O(m*n)
# #2023_11_21_Time_50_ms_(91.92%)_Space_211.1_MB_(52.53%)

# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  dp = Array.new(m) {Array.new(n, 0)}

  m.times {|i| dp[i][0] = 1}
  n.times {|j| dp[0][j] = 1}

  (1...m).each do |i|
    (1...n).each do |j|
      dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
    end
  end

  dp[m - 1][n - 1]
end
