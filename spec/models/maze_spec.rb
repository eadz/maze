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
end
