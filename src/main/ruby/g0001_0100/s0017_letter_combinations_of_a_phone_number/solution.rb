# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #String #Hash_Table #Backtracking
# #LeetCode_75_Backtracking #Algorithm_II_Day_11_Recursion_Backtracking
# #Udemy_Backtracking/Recursion #Top_Interview_150_Backtracking #Big_O_Time_O(4^n)_Space_O(n)
# #2023_11_17_Time_49_ms_(93.94%)_Space_210.9_MB_(97.73%)

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  return [] if digits.empty?

  letters = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
  ans = []
  find_combinations(0, digits, letters, "", ans)
  ans
end

private

def find_combinations(start, nums, letters, curr, ans)
  if curr.length == nums.length
    ans << curr
    return
  end

  (start...nums.length).each do |i|
    n = nums[i].to_i
    letters[n].each_char do |ch|
      find_combinations(i + 1, nums, letters, curr + ch, ans)
    end
  end
end
