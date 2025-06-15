# #Medium #Top_100_Liked_Questions #Array #Binary_Search #Matrix #Data_Structure_I_Day_5_Array
# #Algorithm_II_Day_1_Binary_Search #Binary_Search_I_Day_8 #Level_2_Day_8_Binary_Search
# #Udemy_2D_Arrays/Matrix #Top_Interview_150_Binary_Search #Big_O_Time_O(endRow+endCol)_Space_O(1)
# #2023_11_22_Time_50_ms_(97.83%)_Space_210.9_MB_(97.83%)

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  end_col = matrix[0].length
  target_row = 0
  result = false

  matrix.each_with_index do |row, i|
    if row[end_col - 1] >= target
      target_row = i
      break
    end
  end

  matrix[target_row].each_with_index do |element, i|
    if element == target
      result = true
      break
    end
  end

  return result
end
