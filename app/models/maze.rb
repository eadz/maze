class Maze
  attr :graph, :exit_id

  def initialize
    @graph = Graph.new
  end

  def generate(size = 30)
    @exit_id = size - 1 # the last vertex created
    level_verticies = [:root]
    new_level = []
    vertexID = 0
    while vertexID < size
      level_verticies.each do |vertex|
        new_level = []
        forks = rand(4)+1
        forks.times do
          graph.add_vertex(vertexID)
          graph.add_edge(from: vertex, to: vertexID)
          new_level << vertexID
          vertexID += 1
        end
      end
      level_verticies = new_level
    end
  end
end
