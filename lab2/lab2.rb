class Bird
  def talk
    return "I'm default bird. Noone knows who I am"
  end

  def flying?
    false
  end
end

class Chicken < Bird
  def talk
    return "I'm a chicken"
  end

  def flying?
    return false
  end
end

class Swan < Bird
  def talk
    return "I'm a swan"
  end
  
  def flying?
    return true
  end
end

class Penguin < Bird
  def talk
    return "I'm a penguin"
  end

  def flying?
    return false
  end
end

class Ostrich < Bird
  def talk
    return "I'm an ostrich"
  end

  def flying?
    return false
  end
end

bird = Bird.new()
chicken = Chicken.new()
swan = Swan.new()
penguin = Penguin.new()
ostrich = Ostrich.new()

puts ("Bird says: %{speech}. Is flying: %{flying}" % [speech: bird.talk, flying: bird.flying?])
puts ("Chicken says: %{speech}. Is flying: %{flying}" % [speech: chicken.talk, flying: chicken.flying?])
puts ("Swan says: %{speech}. Is flying: %{flying}" % [speech: swan.talk, flying: swan.flying?])
puts ("Penguin says: %{speech}. Is flying: %{flying}" % [speech: penguin.talk, flying: penguin.flying?])
puts ("Ostrich says: %{speech}. Is flying: %{flying}" % [speech: ostrich.talk, flying: ostrich.flying?])
