# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Sorting #Two_Pointers
# #Data_Structure_II_Day_1_Array #Algorithm_II_Day_3_Two_Pointers #Udemy_Two_Pointers
# #Big_O_Time_O(n*log(n))_Space_O(n^2) #2023_11_17_Time_659_ms_(83.74%)_Space_214.1_MB_(59.36%)

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums = nums.sort
  rs = []
  nums.each.with_index do |num, i|
    if i > 0 && num == nums[i - 1]
      next
    end
    l, r = i + 1, nums.size - 1

    while l < r
      sum = num + nums[l] + nums[r]
      if sum > 0
        r -= 1
      elsif sum < 0
        l += 1
      else
        rs << [num, nums[l], nums[r]]
        l += 1
        while nums[l] == nums[l - 1] && l < r
          l += 1
        end
      end
    end
  end

  rs
end
