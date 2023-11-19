# #Medium #Top_100_Liked_Questions #Array #Two_Pointers #Big_O_Time_O(n)_Space_O(1)

# @param {String} string
# @return {String}
def next_permutation(nums)
  return if nums.nil? || nums.length <= 1

  i = nums.length - 2
  while i >= 0 && nums[i] >= nums[i + 1]
    i -= 1
  end

  if i >= 0
    j = nums.length - 1
    while nums[j] <= nums[i]
      j -= 1
    end
    swap_next(nums, i, j)
  end

  reverse_next(nums, i + 1, nums.length - 1)
end

private

def swap_next(nums, i, j)
  temp = nums[i]
  nums[i] = nums[j]
  nums[j] = temp
end

def reverse_next(nums, i, j)
  while i < j
    swap_next(nums, i, j)
    i += 1
    j -= 1
  end
end
