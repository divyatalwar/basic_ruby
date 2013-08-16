class Array
  def power(pow)
    collect! {|element| element**pow if element.is_a?(Fixnum) }
  end
end
