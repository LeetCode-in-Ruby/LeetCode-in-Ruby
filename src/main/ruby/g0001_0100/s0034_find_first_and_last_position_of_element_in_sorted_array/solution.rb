# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Binary_Search
# #Algorithm_II_Day_1_Binary_Search #Binary_Search_I_Day_5 #Top_Interview_150_Binary_Search
# #Big_O_Time_O(log_n)_Space_O(1) #2023_11_19_Time_60_ms_(77.52%)_Space_211.7_MB_(22.94%)

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  ans = [helper(nums, target, false), helper(nums, target, true)]
  ans
end

private

def helper(nums, target, equals)
  l = 0
  r = nums.length - 1
  result = -1

  while l <= r
    mid = l + (r - l) / 2
    result = mid if nums[mid] == target
    if nums[mid] < target || (nums[mid] == target && equals)
      l = mid + 1
    else
      r = mid - 1
    end
  end

  result
end
