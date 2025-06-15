# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Binary_Search
# #Algorithm_II_Day_1_Binary_Search #Binary_Search_I_Day_11 #Level_2_Day_8_Binary_Search
# #Udemy_Binary_Search #Top_Interview_150_Binary_Search #Big_O_Time_O(log_n)_Space_O(1)
# #2023_11_19_Time_59_ms_(74.85%)_Space_211.3_MB_(12.57%)

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  lo = 0
  hi = nums.length - 1

  while lo <= hi
    mid = ((hi - lo) >> 1) + lo

    return mid if target == nums[mid]

    if nums[lo] <= nums[mid]
      if nums[lo] <= target && target <= nums[mid]
        hi = mid - 1
      else
        lo = mid + 1
      end
    elsif nums[mid] <= target && target <= nums[hi]
      lo = mid + 1
    else
      hi = mid - 1
    end
  end

  -1
end
