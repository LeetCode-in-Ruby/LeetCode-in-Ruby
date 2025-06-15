# #Hard #Top_100_Liked_Questions #Array #Heap_Priority_Queue #Sliding_Window #Queue
# #Monotonic_Queue #Udemy_Arrays #Big_O_Time_O(n*k)_Space_O(n+k)
# #2023_11_26_Time_511_ms_(77.78%)_Space_238.5_MB_(66.67%)

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_sliding_window(nums, k)
  n = nums.length
  res = []
  x = 0
  dq = []
  i = 0
  j = 0

  while j < n
    while !dq.empty? && dq.last < nums[j]
      dq.pop
    end

    dq.push(nums[j])

    if j - i + 1 == k
      res[x] = dq.first
      x += 1

      if dq.first == nums[i]
        dq.shift
      end

      i += 1
    end

    j += 1
  end

  res
end
