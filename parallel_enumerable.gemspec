# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parallel_enumerable/version'

Gem::Specification.new do |gem|
  gem.name          = "parallel_enumerable"
  gem.version       = ParallelEnumerable::VERSION
  gem.authors       = ["Gabriel Naiman"]
  gem.email         = ["gabynaiman@gmail.com"]
  gem.description   = 'Extends enumerable module with parallel'
  gem.summary       = 'Extends enumerable module with parallel'
  gem.homepage      = 'https://github.com/gabynaiman/parallel_enumerable'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'parallel'

  gem.add_development_dependency 'rspec'
end
