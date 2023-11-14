# Write your MySQL query statement below
# #Medium #String

# @param {String} string
# @return {String}
def convert(s, num_rows)
  s_len = s.length
  return s if num_rows == 1

  max_dist = num_rows * 2 - 2
  buf = ''

  (0...num_rows).each do |i|
    index = i

    if i.zero? || i == num_rows - 1
      while index < s_len
        buf << s[index]
        index += max_dist
      end
    else
      while index < s_len
        buf << s[index]
        index += max_dist - i * 2

        break if index >= s_len

        buf << s[index]
        index += i * 2
      end
    end
  end

  buf
end
