# #Medium #Top_100_Liked_Questions #String #Dynamic_Programming #LeetCode_75_DP/Multidimensional
# #Algorithm_II_Day_17_Dynamic_Programming #Dynamic_Programming_I_Day_19
# #Udemy_Dynamic_Programming #Big_O_Time_O(n*m)_Space_O(n*m)
# #2023_11_27_Time_828_ms_(75.00%)_Space_235.1_MB_(56.82%)

# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
  n = text1.length
  m = text2.length
  dp = Array.new(n + 1) {Array.new(m + 1, 0)}

  (1..n).each do |i|
    (1..m).each do |j|
      if text1[i - 1] == text2[j - 1]
        dp[i][j] = dp[i - 1][j - 1] + 1
      else
        dp[i][j] = [dp[i - 1][j], dp[i][j - 1]].max
      end
    end
  end

  dp[n][m]
end
