class Graph

  class VertexNotFoundError < StandardError; end

  Vertex = Struct.new("Vertex", :name, :edges) do
    def initialize(name, edges = Set.new)
      super
    end
  end

  def initialize
    @graph = {}
    @graph[:root] = Vertex.new(:root)
  end

  def vertex(name)
    @graph[name]
  end

  def root
    @graph[:root]
  end

  def add_vertex(name)
    @graph[name] = Vertex.new(name)
  end

  def add_edge(from:, to:)
    raise VertexNotFoundError.new("Vertex '#{from}' (from) is not in the graph") unless vertex(from)
    raise VertexNotFoundError.new("Vertex '#{to}' (to) is not in the graph") unless vertex(to)
    vertex(from).edges.add(to)
  end
end
