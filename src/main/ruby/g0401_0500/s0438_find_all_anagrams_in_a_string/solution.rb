# #Medium #Top_100_Liked_Questions #String #Hash_Table #Sliding_Window
# #Algorithm_II_Day_5_Sliding_Window #Programming_Skills_II_Day_12
# #Level_1_Day_12_Sliding_Window/Two_Pointer #Big_O_Time_O(n+m)_Space_O(1)
# #2023_11_27_Time_186_ms_(82.72%)_Space_212.4_MB_(29.63%)

# @param {String} s
# @param {String} p
# @return {Integer[]}
g def find_anagrams(s, p)
  map = Array.new(26, 0)

  p.each_char {|char| map[char.ord - 'a'.ord] += 1}

  res = []
  i = 0
  j = 0

  while i < s.length
    idx = s[i].ord - 'a'.ord
    map[idx] -= 1

    if i >= p.length
      map[s[j].ord - 'a'.ord] += 1
      j += 1
    end

    finish = map.all? {|count| count == 0}

    if i >= p.length - 1 && finish
      res << j
    end

    i += 1
  end

  res
end
