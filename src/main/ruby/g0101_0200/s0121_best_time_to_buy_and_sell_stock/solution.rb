# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #Array #Dynamic_Programming
# #Data_Structure_I_Day_3_Array #Dynamic_Programming_I_Day_7 #Level_1_Day_5_Greedy #Udemy_Arrays
# #Top_Interview_150_Array/String #Big_O_Time_O(N)_Space_O(1)
# #2023_11_23_Time_147_ms_(80.21%)_Space_220.8_MB_(82.79%)

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  min_price = prices[0]

  (1...prices.length).each do |i|
    if prices[i] > min_price
      max_profit = [max_profit, prices[i] - min_price].max
    else
      min_price = prices[i]
    end
  end

  max_profit
end
