module Graphlz

  # Represents a Undirected general graph stored via Adjacency list
  #
  # Example
  #   graph = Graph.new
  #   graph.add_node 3
  #   graph.add_node 5
  #   graph.connect(3, 5)
  #   graph.connected?(3, 5) == true
  class Graph
    def initialize
      @nodes = Hash.new
    end

    def add_node node_id
      @nodes[node_id] = Node.new(node_id)
    end

    def connect(source_id, target_id)
      if contain_nodes(source_id, target_id)
        @nodes[source_id].connect_to @nodes[target_id]
        @nodes[target_id].connect_to @nodes[source_id]
      end
    end

    def connected?(source_id, target_id)
      if contain_nodes(source_id, target_id)
        return @nodes[source_id].connected?(@nodes[target_id])
      end
      false
    end

    def neighbours_of node_id
      if @nodes.has_key? node_id
        return @nodes[node_id].neighbours
      end
      Set.new
    end

    private

    def contain_nodes(node1, node2)
      @nodes.has_key?(node1) && @nodes.has_key?(node2)
    end
  end
end