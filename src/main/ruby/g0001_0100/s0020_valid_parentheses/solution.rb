# #Easy #Top_100_Liked_Questions #Top_Interview_Questions #String #Stack
# #Data_Structure_I_Day_9_Stack_Queue #Udemy_Strings #Big_O_Time_O(n)_Space_O(n)
# #2023_11_17_Time_53_ms_(90.52%)_Space_211.2_MB_(35.11%)

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  s.each_char do |c|
    case c
    when '(', '[', '{'
      stack.push(c)
    when ')'
      return false if stack.empty? || stack.pop != '('
    when '}'
      return false if stack.empty? || stack.pop != '{'
    when ']'
      return false if stack.empty? || stack.pop != '['
    else
      return false
    end
  end
  stack.empty?
end
