# #Medium #Top_100_Liked_Questions #Array #Backtracking #Algorithm_II_Day_10_Recursion_Backtracking
# #Level_2_Day_20_Brute_Force/Backtracking #Udemy_Backtracking/Recursion
# #Top_Interview_150_Backtracking #Big_O_Time_O(2^n)_Space_O(n+2^n)
# #2023_11_19_Time_79_ms_(74.84%)_Space_211.2_MB_(48.43%)

# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  ans = []
  sub_list = []
  combination_sum_rec(candidates.length, candidates, target, sub_list, ans)
  ans
end

private

def combination_sum_rec(n, coins, amount, sub_list, ans)
  if amount.zero? || n.zero?
    ans.push(sub_list.clone) if amount.zero?
    return
  end

  if amount - coins[n - 1] >= 0
    sub_list.push(coins[n - 1])
    combination_sum_rec(n, coins, amount - coins[n - 1], sub_list, ans)
    sub_list.pop
  end

  combination_sum_rec(n - 1, coins, amount, sub_list, ans)
end
