# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #Sorting
# #Data_Structure_II_Day_2_Array #Level_2_Day_17_Interval #Udemy_2D_Arrays/Matrix
# #Big_O_Time_O(n_log_n)_Space_O(n) #2023_11_21_Time_103_ms_(74.70%)_Space_212.5_MB_(84.34%)

# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals.sort! {|a, b| a[0] <=> b[0]}
  result = []
  current = intervals[0]
  result << current

  intervals[1..].each do |next_interval|
    if current[1] >= next_interval[0]
      current[1] = [current[1], next_interval[1]].max
    else
      current = next_interval
      result << current
    end
  end

  result
end
