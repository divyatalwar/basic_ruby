class Array
  def array_to_hash
    new_hash  = Hash.new {|hash, key| hash[key] = [] }
    for element in self
      if element.is_a?(Fixnum)
        len = element.to_s.length
      else
        len = element.length
      end
      new_hash[len] << element
    end
    new_hash
  end
  def group
    array_to_hash.inject(Hash.new) do |hash, (key, value) |
      if key.odd?
        hash["odd"] ||=[]
        hash["odd"] << value
      else
        hash["even"] ||=[]
        hash["even"] << value
      end
      hash
    end
  end
end

