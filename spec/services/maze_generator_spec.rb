require 'rails_helper'

RSpec.describe MazeGenerator do
  subject(:generator) { described_class.new }

  describe "#maze after generation" do
    before { subject.generate }
    it "returns a Maze object" do
      expect(subject.maze).to be_a(Maze)
    end
  end

  
end
