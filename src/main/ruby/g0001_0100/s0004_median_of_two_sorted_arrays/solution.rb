# #Hard #Top_100_Liked_Questions #Top_Interview_Questions #Array #Binary_Search #Divide_and_Conquer
# #Top_Interview_150_Binary_Search #Big_O_Time_O(log(min(N,M)))_Space_O(1)
# #AI_can_be_used_to_solve_the_task #2023_11_12_Time_64_ms_(93.81%)_Space_212.7_MB_(57.89%)

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  combined = nums1.concat(nums2)
  combined = combined.sort
  var4 = 0
  if combined.length.odd?
    var1 = ((combined.length).div(2))
    result = combined[var1]
  end
  if combined.length.even?
    var2 = ((combined.length).div(2))
    var3 = (var2) - 1
    var4 = (combined[var2]) + (combined[var3])
    result = var4 / (2.to_f)
  end
  result
end
