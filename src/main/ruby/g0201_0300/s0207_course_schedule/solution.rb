# #Medium #Top_100_Liked_Questions #Top_Interview_Questions #Depth_First_Search
# #Breadth_First_Search #Graph #Topological_Sort #Big_O_Time_O(N)_Space_O(N)
# #2023_11_25_Time_60_ms_(95.42%)_Space_212.4_MB_(26.72%)

WHITE = 0
GRAY = 1
BLACK = 2

# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
  adj = Array.new(num_courses) {[]}

  prerequisites.each do |pre|
    adj[pre[1]] << pre[0]
  end

  colors = Array.new(num_courses, WHITE)

  (0...num_courses).each do |i|
    if colors[i] == WHITE && !adj[i].empty? && has_cycle(adj, i, colors)
      return false
    end
  end

  true
end

private

def has_cycle(adj, node, colors)
  colors[node] = GRAY

  adj[node].each do |nei|
    return true if colors[nei] == GRAY
    return true if colors[nei] == WHITE && has_cycle(adj, nei, colors)
  end

  colors[node] = BLACK
  false
end
