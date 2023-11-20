# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #String #Hash_Table #Sliding_Window
# #Algorithm_I_Day_6_Sliding_Window #Level_2_Day_14_Sliding_Window/Two_Pointer #Udemy_Strings
# #Big_O_Time_O(n)_Space_O(1) #2023_11_12_Time_94_ms_(85.62%)_Space_211.3_MB_(45.32%)

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  last_indices = Array.new(256, -1)
  max_len = 0
  cur_len = 0
  start = 0

  s.each_char.with_index do |cur, i|
    cur = cur.ord
    if last_indices[cur] < start
      last_indices[cur] = i
      cur_len += 1
    else
      last_index = last_indices[cur]
      start = last_index + 1
      cur_len = i - start + 1
      last_indices[cur] = i
    end

    max_len = cur_len if cur_len > max_len
  end

  max_len
end
