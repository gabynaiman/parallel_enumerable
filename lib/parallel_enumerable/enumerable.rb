module Enumerable

  def parallel(options={})
    ParallelEnumerable::Proxy.new(self, options)
  end

end
