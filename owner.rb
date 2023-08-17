class Owner
  def initialize(name)
    @name = name
    @animals = []
  end

  attr_accessor :name
  attr_reader :animals

  def add_animal(animal)
    @animals.push(animal)
    animal.owner = self
  end
end
