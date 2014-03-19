require "lightcore/version"

module Enumerable

  def count_by(&block)
    inject(Hash.new(0)){|memo, obj| memo[yield(obj)] += 1; memo }
  end

  def hash_map(&block)
    Hash[ map(&block) ]
  end

end

class Hash

  def mapk
    new_h = {}
    each_pair do |k, v|
      new_h[yield(k)] = v
    end
    new_h
  end

  def mapk!
    each_pair.to_a.each do |k, v|
      self[yield(k)] = delete(k)
    end
    self
  end

  def mapv
    new_h = {}
    each_pair do |k, v|
      new_h[k] = yield(v)
    end
    new_h
  end

  def mapv!
    each_pair do |k, v|
      self[k] = yield(v)
    end
    self
  end

end

module Kernel

  def to_b
    !!self
  end

end

class String

  def to_b
    !["f", "false"].include?(downcase)
  end

end
