# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Dynamic_Programming #Math #Memoization
# #Algorithm_I_Day_12_Dynamic_Programming #Dynamic_Programming_I_Day_2
# #Level_1_Day_10_Dynamic_Programming #Udemy_Dynamic_Programming #Big_O_Time_O(n)_Space_O(n)
# #2023_11_21_Time_48_ms_(96.01%)_Space_211.1_MB_(19.60%)

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n < 2

  cache = Array.new(n)
  cache[0] = 1
  cache[1] = 2

  (2...n).each do |i|
    cache[i] = cache[i - 1] + cache[i - 2]
  end

  cache[n - 1]
end
