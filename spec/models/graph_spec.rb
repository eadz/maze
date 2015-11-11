require 'rails_helper'

RSpec.describe Graph do
  subject(:graph) { Graph.new }
  describe "#root" do
    it "returns a vertex with the name :root" do
      expect(graph.root.name).to eq(:root)
    end
  end

  describe("#vertex") do
    it "returns the named vertex" do
      expect(graph.vertex(:root).name).to eq(:root)
    end
  end

  describe "#add_vertex" do
    it "adds a named vertex to the graph with no edges" do
      graph.add_vertex(:foo)
      expect(graph.vertex(:foo).edges).to be_empty
    end
  end

  describe "#add_edge" do
    before { graph.add_vertex(:destination) }
    it "adds an edge from one vertex to another" do
      graph.add_edge(from: :root, to: :destination)
      expect(graph.vertex(:root).edges).to include(:destination)
    end
  end
end
