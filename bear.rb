class Bear

attr_reader :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach()
    return @stomach.size()
  end

  def add_fish(name)
    @stomach.push(name)
  end

end
