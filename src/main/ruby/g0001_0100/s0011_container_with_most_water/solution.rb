# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Greedy #Two_Pointers
# #Algorithm_II_Day_4_Two_Pointers #Big_O_Time_O(n)_Space_O(1)
# #2023_11_17_Time_114_ms_(95.98%)_Space_217.5_MB_(71.21%)

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_area = -1
  left = 0
  right = height.length - 1

  while left < right
    if height[left] < height[right]
      max_area = [max_area, height[left] * (right - left)].max
      left += 1
    else
      max_area = [max_area, height[right] * (right - left)].max
      right -= 1
    end
  end

  max_area
end
