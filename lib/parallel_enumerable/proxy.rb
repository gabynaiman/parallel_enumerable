module ParallelEnumerable
  class Proxy

    def initialize(enumerable, options={})
      @enumerable = enumerable
      @options = options
    end

    def each(&block)
      Parallel.each(@enumerable, @options, &block)
    end

    def each_with_index(&block)
      Parallel.each_with_index(@enumerable, @options, &block)
    end

    def map(&block)
      Parallel.map(@enumerable, @options, &block)
    end

    def map_with_index(&block)
      Parallel.map_with_index(@enumerable, @options, &block)
    end

  end
end