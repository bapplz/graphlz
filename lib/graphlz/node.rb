module Graphlz
  # Vertex or node or point in a graph
  #
  # The id of the node can be anything that responds to `#eql?` and `#hash`
  class Node
    attr_reader :id, :neighbours

    def initialize(id)
      @id = id
      @neighbours = Set.new
    end

    def connect_to node
      @neighbours << node
    end

    def connected? node
      @neighbours.include? node
    end

    def eql?(other)
      @id.eql?(other.id)
    end

    def hash
      @id.hash
    end
  end
end