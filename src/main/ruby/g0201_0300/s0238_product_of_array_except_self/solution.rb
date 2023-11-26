# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Prefix_Sum
# #Data_Structure_II_Day_5_Array #Udemy_Arrays #Big_O_Time_O(n^2)_Space_O(n)
# #2023_11_26_Time_123_ms_(76.59%)_Space_219.2_MB_(46.83%)

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  product = 1
  ans = Array.new(nums.length, 1)

  nums.each {|num| product *= num}

  nums.each_with_index do |num, i|
    if num != 0
      ans[i] = product / num
    else
      p = 1
      nums.each_with_index {|n, j| p *= n unless j == i}
      ans[i] = p
    end
  end

  ans
end
