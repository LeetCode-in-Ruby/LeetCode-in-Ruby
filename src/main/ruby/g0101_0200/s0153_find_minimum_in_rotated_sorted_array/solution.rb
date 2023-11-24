# #Medium #Top_100_Liked_Questions #Array #Binary_Search #Algorithm_II_Day_2_Binary_Search
# #Binary_Search_I_Day_12 #Udemy_Binary_Search #Big_O_Time_O(log_N)_Space_O(log_N)
# #2023_11_24_Time_58_ms_(78.74%)_Space_211.1_MB_(78.74%)

# @param {Integer[]} nums
# @return {Integer}
def find_min_util(nums, l, r)
  return nums[l] if l == r

  mid = (l + r) / 2

  return nums[l] if mid == l && nums[mid] < nums[r]
  return nums[mid] if mid - 1 >= 0 && nums[mid - 1] > nums[mid]

  if nums[mid] < nums[l]
    find_min_util(nums, l, mid - 1)
  elsif nums[mid] > nums[r]
    find_min_util(nums, mid + 1, r)
  else
    find_min_util(nums, l, mid - 1)
  end
end

def find_min(nums)
  l = 0
  r = nums.length - 1
  find_min_util(nums, l, r)
end
