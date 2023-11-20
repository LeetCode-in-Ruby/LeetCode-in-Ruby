# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Array #String #Hash_Table #Sorting
# #Data_Structure_II_Day_8_String #Programming_Skills_II_Day_11 #Udemy_Strings
# #Big_O_Time_O(n*k_log_k)_Space_O(n) #2023_11_21_Time_154_ms_(83.69%)_Space_216_MB_(66.43%)

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  hm = Hash.new {|hash, key| hash[key] = []}

  strs.each do |s|
    sorted_str = s.chars.sort.join
    hm[sorted_str] << s
  end

  hm.values
end
