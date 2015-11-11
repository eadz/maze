require 'rails_helper'

RSpec.describe Maze do
  subject(:maze) { described_class.new }
  describe "#generate" do
    it "creates a graph with at least a 2-way fork at the start" do
      maze.generate
      graph = maze.graph
      expect(graph.vertex(:root).edges.size).to be > 1
    end
  end

  describe "#exit_id" do
    it "gives the id of the exit node" do
      maze.generate
      exit_id = maze.exit_id
      expect(exit_id).to_not be_nil
      expect(maze.graph.vertex(exit_id)).to_not be_nil
    end
  end
end
