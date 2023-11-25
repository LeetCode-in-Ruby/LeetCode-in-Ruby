# #Medium #Top_100_Liked_Questions #Array #Dynamic_Programming #Matrix
# #Dynamic_Programming_I_Day_16 #Big_O_Time_O(m*n)_Space_O(m*n)
# #2023_11_25_Time_184_ms_(80.00%)_Space_221.3_MB_(70.00%)

# @param {Character[][]} matrix
# @return {Integer}
def maximal_square(matrix)
  m = matrix.length
  return 0 if m == 0

  n = matrix[0].length
  return 0 if n == 0

  dp = Array.new(m + 1) {Array.new(n + 1, 0)}
  max = 0

  (0...m).each do |i|
    (0...n).each do |j|
      if matrix[i][j] == '1'
        # 1 + minimum from cell above, cell to the left, cell diagonal upper-left
        next_val = 1 + [dp[i][j], [dp[i + 1][j], dp[i][j + 1]].min].min
        # keep track of the maximum value seen
        max = [max, next_val].max
        dp[i + 1][j + 1] = next_val
      end
    end
  end

  max * max
end
