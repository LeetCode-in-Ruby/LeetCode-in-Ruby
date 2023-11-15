# #Easy #Math #Udemy_Integers #2023_11_14_Time_83_ms_(74.19%)_Space_211.1_MB_(43.29%)

# @param {Integer} x
# @return {Boolean}
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
