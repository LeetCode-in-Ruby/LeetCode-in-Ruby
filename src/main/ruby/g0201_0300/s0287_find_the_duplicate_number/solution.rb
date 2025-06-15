# #Medium #Top_100_Liked_Questions #Array #Binary_Search #Two_Pointers #Bit_Manipulation
# #Binary_Search_II_Day_5 #Big_O_Time_O(n)_Space_O(n)
# #2023_11_26_Time_107_ms_(81.25%)_Space_222.8_MB_(31.25%)

# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  arr = Array.new(nums.length + 1, 0)

  nums.each do |num|
    arr[num] += 1
    return num if arr[num] == 2
  end

  0
end
