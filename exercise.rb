class Person
  attr_accessor :name


  def initialize(n)
   @name = n
  end

end

p = Person.new('L. Ron')
puts p.name

p.name = "poopybutthole"
puts p.name