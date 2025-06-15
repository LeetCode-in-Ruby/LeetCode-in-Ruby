# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Array #Hash_Table
# #Data_Structure_I_Day_2_Array #Level_1_Day_13_Hashmap #Udemy_Arrays #Top_Interview_150_Hashmap
# #Big_O_Time_O(n)_Space_O(n) #AI_can_be_used_to_solve_the_task
# #2023_11_08_Time_57_ms_(89.38%)_Space_212.2_MB_(11.34%)

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  dict = {}
  nums.each_with_index do |n, i|
    if dict[target - n]
      return dict[target - n], i
    end
    dict[n] = i
  end
  [-1, -1]
end
