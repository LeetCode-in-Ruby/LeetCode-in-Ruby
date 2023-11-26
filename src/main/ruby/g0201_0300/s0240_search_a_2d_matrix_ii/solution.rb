# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Binary_Search #Matrix
# #Divide_and_Conquer #Data_Structure_II_Day_4_Array #Binary_Search_II_Day_8
# #Big_O_Time_O(n+m)_Space_O(1) #2023_11_26_Time_154_ms_(100.00%)_Space_214.9_MB_(37.50%)

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  return false if matrix.empty? || matrix[0].empty?

  r = 0
  c = matrix[0].length - 1

  while r < matrix.length && c >= 0
    if matrix[r][c] == target
      return true
    elsif matrix[r][c] > target
      c -= 1
    else
      r += 1
    end
  end

  false
end
