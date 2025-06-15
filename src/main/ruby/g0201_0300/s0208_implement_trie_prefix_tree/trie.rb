# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #String #Hash_Table #Design #Trie
# #LeetCode_75_Trie #Level_2_Day_16_Design #Udemy_Trie_and_Heap #Top_Interview_150_Trie
# #Big_O_Time_O(word.length())_or_O(prefix.length())_Space_O(N)
# #2023_11_25_Time_167_ms_(69.81%)_Space_227_MB_(33.96%)

# @param {String} string
# @return {String}
class Trie
  def initialize
    @root = TrieNode.new
    @start_with = false
  end

=begin
    :type word: String
    :rtype: Void
=end
  def insert(word)
    insert_recursive(word, @root, 0)
  end

=begin
    :type word: String
    :rtype: Boolean
=end
  def search(word)
    search_recursive(word, @root, 0)
  end

=begin
    :type prefix: String
    :rtype: Boolean
=end
  def starts_with(prefix)
    search(prefix)
    @start_with
  end

  private

  class TrieNode
    attr_accessor :children, :is_word

    def initialize
      @children = Array.new(26)
      @is_word = false
    end
  end

  def insert_recursive(word, root, idx)
    if idx == word.length
      root.is_word = true
      return
    end

    index = word[idx].ord - 'a'.ord
    root.children[index] ||= TrieNode.new
    insert_recursive(word, root.children[index], idx + 1)
  end

  def search_recursive(word, root, idx)
    if idx == word.length
      @start_with = true
      return root.is_word
    end

    index = word[idx].ord - 'a'.ord
    if root.children[index].nil?
      @start_with = false
      return false
    end

    search_recursive(word, root.children[index], idx + 1)
  end
end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)
