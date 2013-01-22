if defined?(ActiveRecord::Relation)
  class ActiveRecord::Relation
    def parallel(options={})
      ParallelEnumerable::Proxy.new(self.to_a, options)
    end
  end
end