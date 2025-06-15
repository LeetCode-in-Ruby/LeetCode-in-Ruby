# #Medium #Top_100_Liked_Questions #Array #Dynamic_Programming #Matrix
# #Dynamic_Programming_I_Day_16 #Udemy_Dynamic_Programming #Top_Interview_150_Multidimensional_DP
# #Big_O_Time_O(m*n)_Space_O(m*n) #2023_11_21_Time_78_ms_(52.50%)_Space_212.3_MB_(75.00%)

# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
  return grid[0][0] if grid.length == 1 && grid[0].length == 1

  dm = Array.new(grid.length) {Array.new(grid[0].length, 0)}
  s = 0

  (grid.length - 1).downto(0) do |r|
    dm[r][grid[0].length - 1] = grid[r][grid[0].length - 1] + s
    s += grid[r][grid[0].length - 1]
  end

  s = 0
  (grid[0].length - 1).downto(0) do |c|
    dm[grid.length - 1][c] = grid[grid.length - 1][c] + s
    s += grid[grid.length - 1][c]
  end

  recur(grid, dm, 0, 0)
end

private

def recur(grid, dm, r, c)
  if dm[r][c].zero? && r != grid.length - 1 && c != grid[0].length - 1
    dm[r][c] = grid[r][c] + [recur(grid, dm, r + 1, c), recur(grid, dm, r, c + 1)].min
  end

  dm[r][c]
end
