# Graphlz

A dead simple implementation of an Undirected (for now) graph

## Installation

Add this line to your application's Gemfile:

    gem 'graphlz'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install graphlz

## Usage

    graph = Graph.new
    graph.add_node 3
    graph.add_node 5
    graph.connect(3, 5)
    graph.connected?(3, 5) == true

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
