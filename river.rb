class River

attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

def number_of_fish()
  @fish.size
end

def add_fish(name)
  @fish.push(name)
end

def remove_fish(name)
  @fish.delete(name)
end

end
