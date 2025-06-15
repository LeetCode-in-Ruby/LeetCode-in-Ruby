# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Sorting #Heap_Priority_Queue
# #Divide_and_Conquer #Quickselect #LeetCode_75_Heap/Priority_Queue
# #Data_Structure_II_Day_20_Heap_Priority_Queue #Top_Interview_150_Heap
# #Big_O_Time_O(n*log(n))_Space_O(log(n)) #2023_11_25_Time_123_ms_(93.55%)_Space_219.4_MB_(80.65%)

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
  n = nums.length
  nums.sort!
  nums[n - k]
end
