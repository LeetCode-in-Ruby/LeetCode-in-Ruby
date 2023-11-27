# #Medium #Top_100_Liked_Questions #String #Stack #Recursion #Level_1_Day_14_Stack #Udemy_Strings
# #Big_O_Time_O(n)_Space_O(n) #2023_11_27_Time_58_ms_(84.09%)_Space_211.1_MB_(40.91%)

# @param {String} s
# @return {String}
def decode_string(s)
  @i = 0
  decode_helper(s)
end

private

def decode_helper(s)
  count = 0
  result = ""

  while @i < s.length
    c = s[@i]
    @i += 1

    if letter?(c)
      result += c
    elsif digit?(c)
      count = count * 10 + c.to_i
    elsif c == ']'
      break
    elsif c == '['
      # sub problem
      repeat = decode_helper(s)
      result += repeat * count
      count = 0
    end
  end

  result
end

def letter?(c)
  c =~ /[a-zA-Z]/
end

def digit?(c)
  c =~ /\d/
end
