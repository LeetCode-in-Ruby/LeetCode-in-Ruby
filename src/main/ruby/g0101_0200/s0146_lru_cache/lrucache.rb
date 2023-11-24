# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Hash_Table #Design #Linked_List
# #Doubly_Linked_List #Udemy_Linked_List #Big_O_Time_O(1)_Space_O(capacity)
# #2023_11_24_Time_290_ms_(78.05%)_Space_253.1_MB_(69.92%)

class LRUCache
  class LruCacheNode
    attr_accessor :key, :value, :prev, :next

    def initialize(k, v)
      @key = k
      @value = v
    end
  end

=begin
    :type capacity: Integer
=end
  def initialize(cap)
    @capacity = cap
    @cache_map = {}
    # insert here
    @head = nil
    # remove here
    @tail = nil
  end

=begin
    :type key: Integer
    :rtype: Integer
=end
  def get(key)
    val_node = @cache_map[key]
    return -1 if val_node.nil?

    move_to_head(val_node)
    val_node.value
  end

=begin
    :type key: Integer
    :type value: Integer
    :rtype: Void
=end
  def put(key, value)
    val_node = @cache_map[key]

    if val_node
      val_node.value = value
      move_to_head(val_node)
    else
      if @cache_map.size < @capacity
        if @cache_map.empty?
          node = LruCacheNode.new(key, value)
          @cache_map[key] = node
          @head = node
          @tail = node
        else
          node = LruCacheNode.new(key, value)
          @cache_map[key] = node
          node.next = @head
          @head.prev = node
          @head = node
        end
      else
        # remove from tail
        last = @tail
        @tail = last.prev
        @tail.next = nil unless @tail.nil?
        @cache_map.delete(last.key)
        @head = nil if @cache_map.empty?
        # Call recursively
        put(key, value)
      end
    end
  end

  private

  def move_to_head(node)
    return if node == @head

    @tail = node.prev if node == @tail
    prev = node.prev
    nex = node.next
    prev.next = nex
    nex.prev = prev unless nex.nil?
    node.prev = nil
    node.next = @head
    @head.prev = node
    @head = node
  end
end

# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache.new(capacity)
# param_1 = obj.get(key)
# obj.put(key, value)
