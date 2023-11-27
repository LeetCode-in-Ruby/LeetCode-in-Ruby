# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #String #Hash_Table
# #Dynamic_Programming #Trie #Memoization #Algorithm_II_Day_15_Dynamic_Programming
# #Dynamic_Programming_I_Day_9 #Udemy_Dynamic_Programming #Big_O_Time_O(M+max*N)_Space_O(M+N+max)
# #2023_11_27_Time_64_ms_(79.31%)_Space_211.2_MB_(22.41%)

# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  memo = Array.new(s.size - 1, nil)
  dp = lambda do |i|
    return true if i < 0
    return memo[i] unless memo[i].nil?

    memo[i] = word_dict.any? do |word|
      s[i - word.size + 1..i] == word && dp[i - word.size]
    end
  end
  dp[s.size - 1]
end
