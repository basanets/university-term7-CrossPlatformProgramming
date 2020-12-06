class Bird
  def talk
    return "I'm default bird. No one knows who I am"
  end

  def flying?
    false
  end
  
  def name 
    return "DEFAULT BIRD"
  end 
end

class Chicken < Bird
  def talk
    return "I'm a chicken"
  end

  def flying?
    return false
  end
  
  def name 
    return "Chicken"
  end 
end

class Swan < Bird
  def talk
    return "I'm a swan"
  end
  
  def flying?
    return true
  end
  
  def name 
    return "Swan"
  end 
end

class Penguin < Bird
  def talk
    return "I'm a penguin"
  end

  def flying?
    return false
  end
  
  def name 
    return "Penguin"
  end 
end

class Ostrich < Bird
  def talk
    return "I'm an ostrich"
  end

  def flying?
    return false
  end
  
  def name 
    return "Ostrich"
  end 
end


chicken = Chicken.new()
swan = Swan.new()
penguin = Penguin.new()
ostrich = Ostrich.new()

thread1 = Thread.new {
  puts("Thread #1 started")
  thread2 = Thread.new {
    puts("Thread #2 started")
    thread3 = Thread.new {
      puts("Thread #3 started")
      thread4 = Thread.new {
        puts("Thread #4 started")
        puts ("#{ostrich.name} says: #{ostrich.talk}. Is flying: #{ostrich.flying?}") 
        puts("Thread #4 finished")
      }
      thread4.join()
      puts ("#{penguin.name} says: #{penguin.talk}. Is flying: #{penguin.flying?}") 
      puts("Thread #3 finished")
    }
    thread3.join()
    puts ("#{swan.name} says: #{swan.talk}. Is flying: #{swan.flying?}") 
    puts("Thread #2 finished")
  }
  thread2.join()
  puts ("#{chicken.name} says: #{chicken.talk}. Is flying: #{chicken.flying?}") 
  puts("Thread #1 finished")
}
thread1.join()
