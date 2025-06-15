# #Easy #Top_100_Liked_Questions #Array #Two_Pointers #LeetCode_75_Two_Pointers
# #Algorithm_I_Day_3_Two_Pointers #Programming_Skills_I_Day_6_Array #Udemy_Arrays
# #Big_O_Time_O(n)_Space_O(1) #2023_11_26_Time_95_ms_(78.01%)_Space_212.9_MB_(32.46%)

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  first_zero = 0

  (0...nums.length).each do |i|
    if nums[i] != 0
      swap(first_zero, i, nums)
      first_zero += 1
    end
  end
end

private

def swap(index1, index2, numbers)
  val2 = numbers[index2]
  numbers[index2] = numbers[index1]
  numbers[index1] = val2
end
