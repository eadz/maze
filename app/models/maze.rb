class Maze
  attr :graph

  def initialize(size = 30)
    @graph = Graph.new
    @size = size
  end

  def exit_id
    @size - 1 # the last vertex to be generated
  end

  def generate
    level_verticies = [:root]
    new_level = []
    vertexID = 0
    while vertexID < @size
      level_verticies.each do |vertex|
        new_level = []
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

  private

  # the number of forks at each level
  def forks
    rand(2)+2 # (2-4)
  end
end
