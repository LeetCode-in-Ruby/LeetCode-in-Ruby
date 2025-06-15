# #Easy #Top_100_Liked_Questions #Array #Binary_Search #Algorithm_I_Day_1_Binary_Search
# #Binary_Search_I_Day_2 #Top_Interview_150_Binary_Search #Big_O_Time_O(log_n)_Space_O(1)
# #2023_11_19_Time_48_ms_(97.37%)_Space_211.2_MB_(92.98%)

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  lo = 0
  hi = nums.length - 1

  while lo <= hi
    mid = lo + (hi - lo) / 2

    if target == nums[mid]
      return mid
    elsif target < nums[mid]
      hi = mid - 1
    elsif target > nums[mid]
      lo = mid + 1
    end
  end

  lo
end
