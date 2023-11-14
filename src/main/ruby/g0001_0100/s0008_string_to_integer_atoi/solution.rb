# Write your MySQL query statement below
# #Medium #Top_Interview_Questions #String

# @param {String} string
# @return {String}
def my_atoi(s)
  max = (2 ** 31) - 1
  min = (-2 ** 31)
  return s.to_i if s.to_i <= max && s.to_i >= min
  s.to_i < min ? min : max
end
