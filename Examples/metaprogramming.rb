class Person  
  def self.species
    "Homo Sapien"
  end
end

# OR --------------------------------------------

class Person  
  class << self
    def species
      "Homo Sapien"
    end
  end
end

# OR --------------------------------------------

class << Person  
  def species
    "Homo Sapien"
  end
end

# OR --------------------------------------------

Person.instance_eval do  
  def species
    "Homo Sapien"
  end
end

def Person.species  
  "Homo Sapien"
end  