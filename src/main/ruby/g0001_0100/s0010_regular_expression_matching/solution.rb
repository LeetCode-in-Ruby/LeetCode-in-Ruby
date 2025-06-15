# #Hard #Top_Interview_Questions #String #Dynamic_Programming #Recursion #Udemy_Dynamic_Programming
# #Big_O_Time_O(m*n)_Space_O(m*n) #2023_11_14_Time_66_ms_(94.44%)_Space_211_MB_(36.11%)

# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  converted = ''
  split = p.split('')
  split.each do |c|
    if c == '*'
      converted += '*'
    elsif c == '.'
      converted += '[a-z]'
    else
      converted += c
    end
  end
  s.match(converted).to_s == s
end
