# -*- encoding: utf-8 -*-
require File.expand_path('../lib/graphlz/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Venelin Valkov"]
  gem.email         = %w(venelin@bapplz.com)
  gem.description   = %q{Simple Graph implementation}
  gem.summary       = %q{Dead simple graph implementation}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "graphlz"
  gem.require_paths = %w(lib)
  gem.version       = Graphlz::VERSION

  gem.add_development_dependency "rspec", "~>2.10.0"
  gem.add_dependency "yard", "~>0.8.1"
end
