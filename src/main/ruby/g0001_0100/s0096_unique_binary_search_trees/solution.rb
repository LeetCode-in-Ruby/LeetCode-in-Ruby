# #Medium #Dynamic_Programming #Math #Tree #Binary_Tree #Binary_Search_Tree
# #Dynamic_Programming_I_Day_11 #Big_O_Time_O(n)_Space_O(1)
# #2023_11_22_Time_57_ms_(61.54%)_Space_211_MB_(76.92%)

# @param {Integer} n
# @return {Integer}
def num_trees(n)
  result = 1

  for i in 0...n
    result *= (2 * n - i)
    result /= (i + 1)
  end

  result /= (n + 1)
  result.to_i
end
