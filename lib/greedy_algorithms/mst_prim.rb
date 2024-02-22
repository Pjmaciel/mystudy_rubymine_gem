class MstPrim
  attr_accessor :adjacency_list

  def initialize(vertices)
    @adjacency_list = vertices
    vertices.each { |vertice| @adjacency_list[vertice] = [] }
  end

  def add_edge(edge, vertice, weight)
    return if edge == vertice # If u and v are the same vertex, we do not add an edge

    unless @adjacency_list.key?(edge) && @adjacency_list.key?(vertice)
      raise ArgumentError, "Vertices #{edge} or #{vertice} are not present in the graph "
    end

    @adjacency_list[edge] << [vertice, weight]
    @adjacency_list[vertice] << [edge, weight]
  end

  def prim_mst(start_vertex)
    visited = {}
    parent = {}
    key = {}

    @vertices.each do |vertex|
      visited[vertex] = false
      key[vertex] = Float::INFINITY
    end

    key[start_vertex] = 0
    parent[start_vertex] = nil

    @vertices.each do
      edge = min_key(key, visited)
      break if edge.nil?

      visited[edge] = true # Mark the current vertex as visited

      @adjacency_list[edge].each do |vertice, weight|
        if !visited[vertice] && weight < key[vertice]
          parent[vertice] = edge
          key[vertice] = weight
        end
      end
    end

    # Build the minimum tree by returning a list of edges and weights
    mst = []
    parent.each do |vertice, parent_vertice|
      next if parent_vertice.nil?

      weight = key[vertice]
      mst << [parent_vertice, vertice, weight]
    end

    mst
  end

  private

  def min_key(key, visited)
    min = Float::INFINITY
    min_vertex = nil

    key.each do |vertex, val|
      if !visited[vertex] && val < min
        min = val
        min_vertex = vertex
      end
    end

    min_vertex
  end
end
