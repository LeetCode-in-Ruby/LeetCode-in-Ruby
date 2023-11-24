require 'minitest/autorun'
require_relative '../../../../main/ruby/g0101_0200/s0146_lru_cache/lrucache'

class LRUCacheTest < Minitest::Test
  def test_lru_cache
    lru_cache = LRUCache.new(2)
    # cache is {1=1}
    lru_cache.put(1, 1)
    # cache is {1=1, 2=2}
    lru_cache.put(2, 2)
    # return 1
    assert_equal 1, lru_cache.get(1)
    # LRU key was 2, evicts key 2, cache is {1=1, 3=3}
    lru_cache.put(3, 3)
    # returns -1 (not found)
    assert_equal(-1, lru_cache.get(2))
    # LRU key was 1, evicts key 1, cache is {4=4, 3=3}
    lru_cache.put(4, 4)
    # return -1 (not found)
    assert_equal(-1, lru_cache.get(1))
    # return 3
    assert_equal 3, lru_cache.get(3)
    # return 4
    assert_equal 4, lru_cache.get(4)
  end
end
