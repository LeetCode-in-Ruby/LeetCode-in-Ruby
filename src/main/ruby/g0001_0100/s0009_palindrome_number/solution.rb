# Write your MySQL query statement below
# #Easy #Math #Udemy_Integers

# @param {String} string
# @return {String}
def is_palindrome(x)
  return false if x < 0

  rev = 0
  local_x = x

  while local_x > 0
    rev *= 10
    rev += local_x % 10
    local_x /= 10
  end

  rev == x
end
