# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Dynamic_Programming
# #Binary_Search #Algorithm_II_Day_16_Dynamic_Programming #Binary_Search_II_Day_3
# #Dynamic_Programming_I_Day_18 #Udemy_Dynamic_Programming #Big_O_Time_O(n*log_n)_Space_O(n)
# #2023_11_26_Time_68_ms_(96.55%)_Space_211.5_MB_(31.03%)

# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  return 0 if nums.nil? || nums.empty?

  dp = Array.new(nums.length + 1, Float::INFINITY)

  left = 1
  right = 1

  nums.each do |curr|
    start_idx = left
    end_idx = right

    # Binary search: find the index where dp[index] is lower than curr
    while start_idx + 1 < end_idx
      mid_idx = start_idx + (end_idx - start_idx) / 2

      if dp[mid_idx] > curr
        end_idx = mid_idx
      else
        start_idx = mid_idx
      end
    end

    # Update the dp table
    if dp[start_idx] > curr
      dp[start_idx] = curr
    elsif curr > dp[start_idx] && curr < dp[end_idx]
      dp[end_idx] = curr
    elsif curr > dp[end_idx]
      dp[end_idx + 1] = curr
      right += 1
    end
  end

  right
end
