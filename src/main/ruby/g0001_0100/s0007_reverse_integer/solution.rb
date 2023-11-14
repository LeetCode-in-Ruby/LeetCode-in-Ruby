# Write your MySQL query statement below
# #Medium #Top_Interview_Questions #Math #Udemy_Integers

# @param {Integer} x
# @return {Integer}
def reverse(x)
  new_a = x.to_s.reverse.to_i
  if x >= 0
    new_a < (2 ** 31 - 1) ? new_a : 0
  else
    -new_a > (-2) ** 31 ? -new_a : 0
  end
end
