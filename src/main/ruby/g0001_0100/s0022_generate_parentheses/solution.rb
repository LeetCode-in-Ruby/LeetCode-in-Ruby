# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #String #Dynamic_Programming
# #Backtracking #Algorithm_II_Day_11_Recursion_Backtracking #Udemy_Backtracking/Recursion
# #Big_O_Time_O(2^n)_Space_O(n) #2023_11_17_Time_43_ms_(100.00%)_Space_211.3_MB_(83.90%)

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  res = []
  gen(res, '', n, 0, 0)

  res
end

def gen(res, str, n, open_num, close_num)
  res << str if close_num == n

  gen(res, "#{str})", n, open_num, close_num + 1) if close_num < open_num
  gen(res, "#{str}(", n, open_num + 1, close_num) if open_num < n
end
