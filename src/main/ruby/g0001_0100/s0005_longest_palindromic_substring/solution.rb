# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #String #Dynamic_Programming
# #Data_Structure_II_Day_9_String #Algorithm_II_Day_14_Dynamic_Programming
# #Dynamic_Programming_I_Day_17 #Udemy_Strings #Big_O_Time_O(n)_Space_O(n)
# #2023_11_12_Time_117_ms_(98.63%)_Space_211_MB_(92.47%)

# @param {String} s
# @return {String}
def longest_palindrome(s)
  new_str = Array.new(s.length * 2 + 1, 0)
  new_str[0] = '#'

  (0...s.length).each do |i|
    new_str[2 * i + 1] = s[i]
    new_str[2 * i + 2] = '#'
  end

  dp = Array.new(new_str.length, 0)
  friend_center = 0
  friend_radius = 0
  lps_center = 0
  lps_radius = 0

  (0...new_str.length).each do |i|
    dp[i] = friend_center + friend_radius > i ? [dp[2 * friend_center - i], friend_center + friend_radius - i].min : 1

    while i + dp[i] < new_str.length && i - dp[i] >= 0 && new_str[i + dp[i]] == new_str[i - dp[i]]
      dp[i] += 1
    end

    if friend_center + friend_radius < i + dp[i]
      friend_center = i
      friend_radius = dp[i]
    end

    lps_center, lps_radius = i, dp[i] if lps_radius < dp[i]
  end

  s[(lps_center - lps_radius + 1) / 2, lps_radius - 1]
end
