# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Binary_Search
# #Algorithm_II_Day_1_Binary_Search #Binary_Search_I_Day_5 #Big_O_Time_O(log_n)_Space_O(1)

# @param {String} string
# @return {String}
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
