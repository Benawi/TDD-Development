class NoFood
  def liked?(_food)
    false
  end
end

class DogFood
  def liked?(food)
    %w[meat vegetable fruit].member?(food)
  end
end

class SpiderFood
  def liked?(food)
    %w[insect bug].member?(food)
  end
end
