# #Hard #Top_100_Liked_Questions #Top_Interview_Questions #Array #Hash_Table #Udemy_Arrays
# #Big_O_Time_O(n)_Space_O(n) #2023_11_19_Time_130_ms_(65.63%)_Space_215.5_MB_(64.06%)

# @param {Integer[]} nums
# @return {Integer}
def first_8missing_positive(nums)
  nums.each_with_index do |num, i|
    next if num <= 0 || num > nums.length || num == i + 1

    dfs(nums, num)
  end

  nums.each_with_index do |num, i|
    return i + 1 if num != i + 1
  end

  nums.length + 1
end

private

def dfs(nums, val)
  return if val <= 0 || val > nums.length || val == nums[val - 1]

  temp = nums[val - 1]
  nums[val - 1] = val
  dfs(nums, temp)
end
