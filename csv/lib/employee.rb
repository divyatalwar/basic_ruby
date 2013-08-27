class Employee
  attr_reader :name, :id, :designation
  def initialize(name, id, designation)
    @name = name
    @id = id
    @designation = designation
  end
end     
