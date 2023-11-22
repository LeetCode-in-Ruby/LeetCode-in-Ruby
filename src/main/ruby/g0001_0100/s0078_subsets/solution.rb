# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Bit_Manipulation #Backtracking
# #Algorithm_II_Day_9_Recursion_Backtracking #Udemy_Backtracking/Recursion
# #Big_O_Time_O(2^n)_Space_O(n*2^n) #2023_11_22_Time_63_ms_(70.43%)_Space_211_MB_(96.52%)

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  res = []
  subsets = []
  dfs_subsets(0, nums, subsets, res)
  res
end

def dfs_subsets(i, nums, subsets, res)
  return res.append(subsets.clone()) if i >= nums.length
  subsets.append(nums[i])
  dfs_subsets(i + 1, nums, subsets, res)
  subsets.pop()
  dfs_subsets(i + 1, nums, subsets, res)
end
