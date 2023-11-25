require 'minitest/autorun'
require_relative '../../../../main/ruby/g0201_0300/s0208_implement_trie_prefix_tree/trie'

class TrieTest < Minitest::Test
  def test_trie
    trie = Trie.new
    trie.insert('apple')
    assert_equal true, trie.search('apple')
    assert_equal false, trie.search('app')
    assert_equal true, trie.starts_with('app')
    trie.insert('app')
    assert_equal true, trie.search('app')
  end
end
