module Serializer
  def self.flatten(hash, prefix = nil)
    hash.each_pair.reduce(Hash.new) do |tmp, (key, value)|
      new_key = [prefix, key].compact.join('_')

      case value
      when Hash
        tmp.merge(flatten(value, key))
      when Array
        tmp.merge(new_key => value.first)
      else
        tmp.merge(new_key => value)
      end
    end
  end
end
