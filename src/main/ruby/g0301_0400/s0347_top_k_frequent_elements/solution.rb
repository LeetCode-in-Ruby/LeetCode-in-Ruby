# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Hash_Table #Sorting
# #Heap_Priority_Queue #Counting #Divide_and_Conquer #Quickselect #Bucket_Sort
# #Data_Structure_II_Day_20_Heap_Priority_Queue #Big_O_Time_O(n*log(n))_Space_O(k)
# #2023_11_27_Time_67_ms_(83.85%)_Space_212_MB_(84.54%)

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  numhash = Hash.new(0)
  nums.each {|num| numhash[num] += 1}
  newhash = numhash.sort_by {|k, v| -v}
  ret_array = []
  for i in 0...k
    ret_array << newhash[i][0]
  end
  return ret_array
end
