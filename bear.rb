require_relative('river')

class Bear
  attr_reader :name, :type, :food

  def initialize(name, type)
    @name = name
    @type = type
    @food = []
  end

  def roar
    return "ROOARRRRRGGGHHHH"
  end

  def take_fish_from
    #fish = @fish.pop()
    #@food << fish
  end
end