# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Hash_Table #Matrix
# #Udemy_2D_Arrays/Matrix #Big_O_Time_O(m*n)_Space_O(1)
# #2023_11_22_Time_59_ms_(100.00%)_Space_212.3_MB_(21.11%)

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  result = []
  m = matrix.length
  n = matrix[0].length

  (0...m).each do |i|
    (0...n).each do |j|
      result << [i, j] if matrix[i][j] == 0
    end
  end

  result.each do |r, c|
    (0...n).each do |i|
      matrix[r][i] = 0
    end
    (0...m).each do |j|
      matrix[j][c] = 0
    end
  end
  matrix
end
