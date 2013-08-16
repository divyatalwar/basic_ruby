class Array
  def convert_to_hash
    new_hash  = Hash.new {|hash, key| hash[key] = [] }
    for element in self
      len = element.to_s.length
      new_hash[len] << element
    end
    new_hash
  end
end

