class Visit
  attr_reader :animal, :vet
  attr_accessor :date

  def initialize(date, animal, vet)
    @date = date

    @animal = animal
    animal.visits << self

    @vet = vet
    vet.visits << self
  end
end
