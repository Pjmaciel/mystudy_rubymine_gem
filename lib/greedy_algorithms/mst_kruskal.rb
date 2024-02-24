class MstKruskal
  attr_accessor :edges

  def initialize(vertices, edges)
    @vertices = vertices
    @edges = edges
  end

  def kruskal_mst
    result = []
    parent = {}

    @vertices.each { |v| parent[v] = v }

    sorted_edges = @edges.sort_by { |edge| edge[2] }

    sorted_edges.each do |edge|
      u, v, weight = edge
      parent_u = find(parent, u)
      parent_v = find(parent, v)

      if parent_u != parent_v
        result << edge
        union(parent, parent_u, parent_v)
      end
    end

    result
  end

  private

  def find(parent, vertex)
    parent[vertex] == vertex ? vertex : find(parent, parent[vertex])
  end

  def union(parent, u, v)
    parent[u] = v
  end
end
