# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Hash_Table #Union_Find
# #Big_O_Time_O(N_log_N)_Space_O(1) #2023_11_23_Time_135_ms_(91.36%)_Space_217.1_MB_(100.00%)

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  return 0 if nums.empty?

  nums.sort!
  max = -Float::INFINITY
  ths_max = 1

  (0..nums.length - 2).each do |i|
    if nums[i + 1] == nums[i] + 1
      ths_max += 1
      next
    end

    next if nums[i + 1] == nums[i]

    # Start of a new sequence
    max = [max, ths_max].max
    ths_max = 1
  end

  [max, ths_max].max
end
