# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Math #Two_Pointers
# #Algorithm_I_Day_2_Two_Pointers #Udemy_Arrays #Big_O_Time_O(n)_Space_O(1)
# #2023_11_24_Time_100_ms_(92.40%)_Space_218.6_MB_(81.37%)

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  n = nums.length
  t = n - (k % n)
  reverse_rotate(nums, 0, t - 1)
  reverse_rotate(nums, t, n - 1)
  reverse_rotate(nums, 0, n - 1)
end

def reverse_rotate(nums, l, r)
  while l <= r
    temp = nums[l]
    nums[l] = nums[r]
    nums[r] = temp
    l += 1
    r -= 1
  end
end
