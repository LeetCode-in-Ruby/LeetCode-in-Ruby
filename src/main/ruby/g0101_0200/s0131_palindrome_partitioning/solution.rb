# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #String #Dynamic_Programming
# #Backtracking #Big_O_Time_O(N*2^N)_Space_O(2^N*N)
# #2023_11_23_Time_1192_ms_(63.64%)_Space_245_MB_(63.64%)

# @param {String} s
# @return {String[][]}
def partition(s)
  res = []
  backtracking(res, [], s, 0)
  res
end

private

def backtracking(res, curr_arr, s, start)
  if start == s.length
    res << curr_arr.dup
  end

  (start...s.length).each do |end_idx|
    next unless is_palindrome?(s, start, end_idx)

    curr_arr << s[start..end_idx]
    backtracking(res, curr_arr, s, end_idx + 1)
    curr_arr.pop
  end
end

def is_palindrome?(s, start, end_idx)
  while start < end_idx && s[start] == s[end_idx]
    start += 1
    end_idx -= 1
  end
  start >= end_idx
end
