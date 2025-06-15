# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Matrix #Backtracking
# #Algorithm_II_Day_11_Recursion_Backtracking #Top_Interview_150_Backtracking
# #Big_O_Time_O(4^(m*n))_Space_O(m*n) #2023_11_22_Time_56_ms_(100.00%)_Space_211_MB_(53.62%)

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  @row_size = board.size
  @col_size = board[0].size

  if word.match(/^#{word[0]}+/)[0].size > word.match(/#{word[-1]}+$/)[0].size
    word.reverse!
  end

  (0...board.size).each do |r|
    (0...board[0].size).each do |c|
      return true if traverse(board, word, 0, r, c)
    end
  end
  false
end

def traverse(board, word, idx, i, j)
  return false if (
  (i < 0 ||
      i >= @row_size) ||
      (j < 0 ||
          j >= @col_size) ||
      word[idx] != board[i][j]
  )
  return true if idx == word.size - 1

  board[i][j] = '#'

  res = (traverse(board, word, idx + 1, i, j + 1) ||
      traverse(board, word, idx + 1, i, j - 1) ||
      traverse(board, word, idx + 1, i + 1, j) ||
      traverse(board, word, idx + 1, i - 1, j))

  board[i][j] = word[idx]

  res
end
