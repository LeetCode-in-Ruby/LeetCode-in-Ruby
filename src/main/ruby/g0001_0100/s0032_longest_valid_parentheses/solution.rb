# #Hard #Top_100_Liked_Questions #String #Dynamic_Programming #Stack #Big_O_Time_O(n)_Space_O(1)

# @param {String} string
# @return {String}
def longest_valid_parentheses(s)
  max = 0
  left = 0
  right = 0
  n = s.length
  ch = nil

  (0...n).each do |i|
    ch = s[i]
    if ch == '('
      left += 1
    else
      right += 1
    end

    if right > left
      left = 0
      right = 0
    end

    if left == right
      max = [max, left + right].max
    end
  end

  left = 0
  right = 0

  (n - 1).downto(0) do |i|
    ch = s[i]
    if ch == '('
      left += 1
    else
      right += 1
    end

    if left > right
      left = 0
      right = 0
    end

    if left == right
      max = [max, left + right].max
    end
  end

  max
end
