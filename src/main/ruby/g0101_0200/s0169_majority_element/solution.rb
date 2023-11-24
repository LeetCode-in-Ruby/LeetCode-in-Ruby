# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Array #Hash_Table #Sorting #Counting
# #Divide_and_Conquer #Data_Structure_II_Day_1_Array #Udemy_Famous_Algorithm
# #Big_O_Time_O(n)_Space_O(1) #2023_11_24_Time_75_ms_(64.60%)_Space_212.5_MB_(31.42%)

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  candidate_count = 0
  candidate_letter = nil

  nums.each_with_object({}) do |num, hash|
    hash[num] = 1 + hash[num] ||= 0
  end.each do |k, v|
    next if candidate_count >= v

    candidate_letter = k
    candidate_count = v
  end

  candidate_letter
end
