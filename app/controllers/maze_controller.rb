class MazeController < ApplicationController
  def index
  end

  def generate
    @maze = Maze.new
    @maze.generate
  end
end
