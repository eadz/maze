class MazeVisualizer
  def initialize(maze:, width:, height:)
    @maze = maze
    @graph = maze.graph

    @width = width
    @height = height
    @midpoint = [width/2, height/2]

    @positions = {}
  end

  def render # Render a circular maze
    calculate_positions
    # Start is the middle of a circle, work our way outwards
    # with each layer ( level of the graph )
    # Rotate each layer to visually confuse the viewer
    generate_svg
  end
end
