require './remover'
require './foods'

class Animal
  def initialize(type, number_of_legs, name = 'unknown')
    @id = Random.rand(1..1000)
    @number_of_legs = number_of_legs
    @name = name
    @type = type
    @liked_food = NoFood.new
    @visits = []
  end

  attr_accessor :name
  attr_reader :id, :number_of_legs, :type, :owner, :visits

  def speak
    'grrrr'
  end

  def remove_leg
    remover = Remover.new
    @number_of_legs = remover.decrease(@number_of_legs)
  end

  def likes_food?(food)
    @liked_food.liked?(food)
  end

  def owner=(owner)
    @owner = owner
    owner.animals.push(self) unless owner.animals.include?(self)
  end
end
