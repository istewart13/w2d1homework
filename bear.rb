class Bear
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @food = []
  end

  def roar
    return "ROOARRRRRGGGHHHH"
  end

  def food_count
    return @food.length
  end

  def take_fish_from(river)
    fish = river.get_fish()
    @food << fish if !fish.nil?
  end
end