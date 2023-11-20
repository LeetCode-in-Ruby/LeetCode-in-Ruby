# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Math #Matrix
# #Data_Structure_II_Day_3_Array #Programming_Skills_II_Day_7 #Udemy_2D_Arrays/Matrix
# #Big_O_Time_O(n^2)_Space_O(1) #2023_11_21_Time_50_ms_(93.64%)_Space_211_MB_(87.27%)

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  n = matrix.length
  (0...n / 2).each do |i|
    (i...(n - i - 1)).each do |j|
      pos = [[i, j], [j, n - 1 - i], [n - 1 - i, n - 1 - j], [n - 1 - j, i]]
      t = matrix[pos[0][0]][pos[0][1]]
      (1...pos.length).each do |k|
        temp = matrix[pos[k][0]][pos[k][1]]
        matrix[pos[k][0]][pos[k][1]] = t
        t = temp
      end
      matrix[pos[0][0]][pos[0][1]] = t
    end
  end
end
