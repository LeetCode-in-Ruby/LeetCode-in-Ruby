# #Hard #Top_100_Liked_Questions #Top_Interview_Questions #Array #Dynamic_Programming #Two_Pointers
# #Stack #Monotonic_Stack #Dynamic_Programming_I_Day_9 #Udemy_Two_Pointers
# #Big_O_Time_O(n)_Space_O(1)

# @param {String} string
# @return {String}
def trap(height)
  l = 0
  r = height.length - 1
  res = 0
  lower_wall = 0

  while l < r
    l_val = height[l]
    r_val = height[r]

    if l_val < r_val
      lower_wall = [l_val, lower_wall].max
      res += lower_wall - l_val
      l += 1
    else
      lower_wall = [r_val, lower_wall].max
      res += lower_wall - r_val
      r -= 1
    end
  end

  res
end
