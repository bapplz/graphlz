require "rspec"
require "spec_helper"

describe Graph do

  before(:each) do
    @graph = Graph.new
    @graph.add_node 1
    @graph.add_node 2
    @graph.add_node 5
  end

  it "should have properly connected nodes" do
    @graph.connect(1, 5)
    @graph.connected?(1, 5).should == true
  end

  it "should have not connected nodes" do
    @graph.connected?(2, 9).should == false
  end

  it "should have the right size of neighbours for a node" do
    @graph.connect(1, 5)
    @graph.connect(1, 2)
    @graph.neighbours_of(1).size == 2
  end

  it "should add the same neighbour only once" do
    @graph.connect(1, 5)
    @graph.connect(1, 5)
    @graph.neighbours_of(1).size == 1
  end

  it "should have undirected connection between nodes" do
    @graph.connect(1, 5)
    @graph.connected?(1, 5).should == true
    @graph.connected?(5, 1).should == true
  end
end