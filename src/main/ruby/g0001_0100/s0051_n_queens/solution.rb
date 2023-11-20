# #Hard #Top_100_Liked_Questions #Array #Backtracking #Big_O_Time_O(N!)_Space_O(N)
# #2023_11_21_Time_82_ms_(88.89%)_Space_211.5_MB_(94.44%)

# @param {Integer} n
# @return {String[][]}
def solve_n_queens(n)
  pos = Array.new(2 * n - 1 + 2 * n - 1, false)
  pos2 = Array.new(n, 0)
  ans = []
  helper_queens(n, 0, pos, pos2, ans)
  ans
end

private

def helper_queens(n, row, pos, pos2, ans)
  return construct(n, pos2, ans) if row == n

  (0...n).each do |i|
    index = n + 2 * n - 1 + n - 1 + i - row
    next if pos[i] || pos[n + i + row] || pos[index]

    pos[i] = true
    pos[n + i + row] = true
    pos[index] = true
    pos2[row] = i
    helper_queens(n, row + 1, pos, pos2, ans)
    pos[i] = false
    pos[n + i + row] = false
    pos[index] = false
  end
end

def construct(n, pos, ans)
  sol = []
  (0...n).each do |r|
    queen_row = Array.new(n, '.')
    queen_row[pos[r]] = 'Q'
    sol << queen_row.join
  end
  ans << sol
end
