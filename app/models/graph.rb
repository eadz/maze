class Graph

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
    vertex(from).edges.add to
  end
end
