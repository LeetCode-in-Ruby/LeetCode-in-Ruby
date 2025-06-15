# #Medium #Top_100_Liked_Questions #Array #Stack #Monotonic_Stack #LeetCode_75_Monotonic_Stack
# #Programming_Skills_II_Day_6 #Big_O_Time_O(n)_Space_O(n)
# #2023_11_27_Time_490_ms_(84.71%)_Space_233.3_MB_(18.82%)

# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  sol = Array.new(temperatures.length, 0)
  (temperatures.length - 2).downto(0) do |i|
    j = i + 1
    while j <= temperatures.length
      if temperatures[i] < temperatures[j]
        sol[i] = j - i
        break
      else
        break if sol[j].zero?

        j += sol[j]
      end
    end
  end
  sol
end
