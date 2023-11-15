# #Medium #Top_Interview_Questions #String #2023_11_14_Time_67_ms_(67.26%)_Space_211.1_MB_(42.48%)

# @param {String} s
# @return {Integer}
def my_atoi(s)
  max = (2 ** 31) - 1
  min = (-2 ** 31)
  return s.to_i if s.to_i <= max && s.to_i >= min
  s.to_i < min ? min : max
end
