# #Medium #String #Hash_Table #Greedy #Two_Pointers #Data_Structure_II_Day_7_String
# #Big_O_Time_O(n)_Space_O(1) #2023_11_27_Time_62_ms_(100.00%)_Space_210.9_MB_(100.00%)

# @param {String} s
# @return {Integer[]}
def partition_labels(s)
  letters = s.chars
  result = []
  position = Array.new(26, 0)

  letters.each_with_index do |char, i|
    position[char.ord - 'a'.ord] = i
  end

  i = 0
  prev = -1
  max = 0

  while i < letters.length
    if position[letters[i].ord - 'a'.ord] > max
      max = position[letters[i].ord - 'a'.ord]
    end

    if i == max
      result.push(i - prev)
      prev = i
    end

    i += 1
  end

  result
end
