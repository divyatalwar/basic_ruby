class Array
  def array_to_hash
    new_hash  = Hash.new {|hash, key| hash[key] = [] }
    for element in self
      len = element.to_s.length
      new_hash[len] << element
    end
    new_hash
  end
  def group
    array_to_hash.inject(Hash.new {|hash, key| hash[key] = [] }) do |new_hash, (key, value) |
      new_hash[key.odd? ? 'odd' : 'even' ] << value 
      new_hash
    end  
  end
end

