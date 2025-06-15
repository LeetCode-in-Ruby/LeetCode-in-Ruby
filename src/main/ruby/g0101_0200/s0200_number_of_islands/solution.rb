# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Depth_First_Search
# #Breadth_First_Search #Matrix #Union_Find
# #Algorithm_II_Day_6_Breadth_First_Search_Depth_First_Search
# #Graph_Theory_I_Day_1_Matrix_Related_Problems #Level_1_Day_9_Graph/BFS/DFS #Udemy_Graph
# #Top_Interview_150_Graph_General #Big_O_Time_O(M*N)_Space_O(M*N)
# #2023_11_25_Time_141_ms_(72.68%)_Space_219.4_MB_(87.43%)

# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  islands = 0
  if grid && !grid.empty? && !grid[0].empty?
    (0...grid.length).each do |i|
      (0...grid[0].length).each do |j|
        if grid[i][j] == '1'
          dfs_islands(grid, i, j)
          islands += 1
        end
      end
    end
  end
  islands
end

private

def dfs_islands(grid, x, y)
  return if x.negative? || grid.length <= x || y.negative? || grid[0].length <= y || grid[x][y] != '1'

  grid[x][y] = 'x'
  dfs_islands(grid, x + 1, y)
  dfs_islands(grid, x - 1, y)
  dfs_islands(grid, x, y + 1)
  dfs_islands(grid, x, y - 1)
end
