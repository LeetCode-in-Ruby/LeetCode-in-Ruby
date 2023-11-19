# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Backtracking
# #Algorithm_I_Day_11_Recursion_Backtracking #Level_2_Day_20_Brute_Force/Backtracking
# #Udemy_Backtracking/Recursion #Big_O_Time_O(n*n!)_Space_O(n+n!)
# #2023_11_19_Time_62_ms_(89.60%)_Space_211.1_MB_(64.00%)

# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  return [] if nums.nil? || nums.empty?

  final_result = []
  permute_recur(nums, final_result, [], Array.new(nums.length, false))
  final_result
end

private

def permute_recur(nums, final_result, curr_result, used)
  if curr_result.length == nums.length
    final_result << curr_result.dup
    return
  end

  nums.each_with_index do |num, i|
    next if used[i]

    curr_result << num
    used[i] = true
    permute_recur(nums, final_result, curr_result, used)
    used[i] = false
    curr_result.pop
  end
end
