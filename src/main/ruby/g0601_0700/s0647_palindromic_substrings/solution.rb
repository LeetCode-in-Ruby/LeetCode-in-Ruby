# #Medium #String #Dynamic_Programming #Big_O_Time_O(n^2)_Space_O(n)
# #2023_11_27_Time_101_ms_(100.00%)_Space_211.2_MB_(28.57%)

# @param {String} s
# @return {Integer}
def count_substrings(s)
  a = s.chars
  res = [0]

  (0...a.length).each do |i|
    expand_count(a, i, i, res)
    expand_count(a, i, i + 1, res)
  end

  res[0]
end

def expand_count(a, l, r, res)
  while l >= 0 && r < a.length
    if a[l] != a[r]
      return
    else
      res[0] += 1
      l -= 1
      r += 1
    end
  end
end
