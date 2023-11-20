# #Hard #Top_100_Liked_Questions #String #Dynamic_Programming
# #Algorithm_II_Day_18_Dynamic_Programming #Dynamic_Programming_I_Day_19
# #Udemy_Dynamic_Programming #Big_O_Time_O(n^2)_Space_O(n2)
# #2023_11_21_Time_139_ms_(73.91%)_Space_211_MB_(100.00%)

# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  n1 = word1.length
  n2 = word2.length

  return min_distance(word2, word1) if n2 > n1

  dp = Array.new(n2 + 1) {|j| j}

  (1..n1).each do |i|
    pre = dp[0]
    dp[0] = i

    (1..n2).each do |j|
      tmp = dp[j]
      dp[j] = word1[i - 1] != word2[j - 1] ? 1 + [pre, dp[j], dp[j - 1]].min : pre
      pre = tmp
    end
  end

  dp[n2]
end
