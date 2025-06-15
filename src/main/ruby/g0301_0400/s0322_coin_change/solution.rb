# #Medium #Top_100_Liked_Questions #Array #Dynamic_Programming #Breadth_First_Search
# #Algorithm_II_Day_18_Dynamic_Programming #Dynamic_Programming_I_Day_20
# #Level_2_Day_12_Dynamic_Programming #Top_Interview_150_1D_DP #Big_O_Time_O(m*n)_Space_O(amount)
# #2023_11_26_Time_655_ms_(84.96%)_Space_217.7_MB_(39.82%)

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  dp = Array.new(amount + 1, 0)
  dp[0] = 1

  coins.each do |coin|
    (coin..amount).each do |i|
      prev = dp[i - coin]
      if prev.positive?
        if dp[i].zero?
          dp[i] = prev + 1
        else
          dp[i] = [dp[i], prev + 1].min
        end
      end
    end
  end

  dp[amount] - 1
end
