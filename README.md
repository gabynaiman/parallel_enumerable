# ParallelEnumerable

[![Gem Version](https://badge.fury.io/rb/parallel_enumerable.png)](https://rubygems.org/gems/parallel_enumerable)

Extend Enumerable module with parallel gem features

## Installation

Add this line to your application's Gemfile:

    gem 'parallel_enumerable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install parallel_enumerable

## Usage

    [1,2,3].parallel.each do |i|
      puts i
    end

## Supported methods

- each
- each_with_index
- map
- map_with_index

## Specify threds or processes

    enumerable.parallel(in_threads: 4).each { ... }
    or
    enumerable.parallel(in_processes: 4).each { ... }

## ActiveRelation extension

    Model.scoped.parallel.each { ... }

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
