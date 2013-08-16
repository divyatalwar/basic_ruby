class Array
  def array_to_hash
    new_hash  = Hash.new {[]}
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
    array_to_hash.inject(Hash.new {[]}) do |new_hash, (key, value) |
      if key.odd?
        new_hash["odd"] << value
      else
        new_hash["even"] << value
      end
      new_hash
    end
  end
end

