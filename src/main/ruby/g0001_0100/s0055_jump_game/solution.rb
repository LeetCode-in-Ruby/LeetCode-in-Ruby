# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Dynamic_Programming #Greedy
# #Algorithm_II_Day_12_Dynamic_Programming #Dynamic_Programming_I_Day_4 #Udemy_Arrays
# #Top_Interview_150_Array/String #Big_O_Time_O(n)_Space_O(1)
# #2023_11_21_Time_88_ms_(95.88%)_Space_216_MB_(77.32%)

# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  sz = nums.length
  # We set 1 so it won't break on the first iteration
  tmp = 1

  (0...sz).each do |i|
    # We always deduct tmp for every iteration
    tmp -= 1
    return false if tmp < 0

    # Get the maximum value because this value is supposed
    # to be our iterator. If both values are 0, then the next
    # iteration we will return false.
    # We can stop the whole iteration with this condition. Without this condition, the code
    # runs in 2ms (79.6%). Adding this condition improves the performance to 1ms (100%)
    # because if the test case jump value is quite large, instead of just iterating, we can
    # just check using this condition.
    # Example: [10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] -> we can just jump to the end without
    # iterating the whole array.
    tmp = [tmp, nums[i]].max
    return true if i + tmp >= sz - 1
  end

  # We can just return true at the end because if tmp is 0 on the previous
  # iteration,
  # even though the next iteration index is the last one, it will return false under the
  # tmp < 0 condition.
  true
end
