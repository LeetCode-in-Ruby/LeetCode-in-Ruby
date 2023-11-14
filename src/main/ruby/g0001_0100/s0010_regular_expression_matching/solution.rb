# Write your MySQL query statement below
# #Hard #Top_100_Liked_Questions #Top_Interview_Questions #String #Dynamic_Programming #Recursion
# #Udemy_Dynamic_Programming #Big_O_Time_O(m*n)_Space_O(m*n)

# @param {String} string
# @return {String}
def is_match(s, p)
  cache = Array.new(s.length + 1) {Array.new(p.length + 1)}
  is_match_recursive(s, p, 0, 0, cache)
end

def is_match_recursive(s, p, i, j, cache)
  return cache[i][j] if cache[i] && cache[i][j]

  if j == p.length
    result = i == s.length
  else
    first_match = i < s.length && (s[i] == p[j] || p[j] == '.')

    if (j + 1) < p.length && p[j + 1] == '*'
      result = (first_match && is_match_recursive(s, p, i + 1, j, cache)) || is_match_recursive(s, p, i, j + 2, cache)
    else
      result = first_match && is_match_recursive(s, p, i + 1, j + 1, cache)
    end
  end

  cache[i] ||= {}
  cache[i][j] = result
  result
end
