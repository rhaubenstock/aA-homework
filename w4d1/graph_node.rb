require "set"
class GraphNode
  attr_reader :value
  attr_accessor :neighbors
  
  def initialize(value, neighbors=[])
    @value = value
    @neighbors = neighbors
  end

  def inspect
    "< value: #{value}" + "\n" + "neighbors: #{neighbors} >"
  end
end

def bfs(starting_node, target_value)
  return nil if starting_node.nil?
  visited = Set.new
  to_visit = [starting_node]
  until to_visit.empty?
    node = to_visit.shift
    return node if node.value == target_value
    visited.add(node)
    node.neighbors.each do |neighbor|
      to_visit << neighbor unless visited.include?(neighbor)
    end
  end
  nil
end

if __FILE__ == $PROGRAM_NAME
  a = GraphNode.new('a')
  b = GraphNode.new('b')
  c = GraphNode.new('c')
  d = GraphNode.new('d')
  e = GraphNode.new('e')
  f = GraphNode.new('f')
  a.neighbors = [b, c, e]
  c.neighbors = [b, d]
  e.neighbors = [a]
  f.neighbors = [e]
  p bfs(a,"b")
  p bfs(a,"f")
end