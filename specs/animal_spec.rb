require('minitest/autorun')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class TestAnimals < MiniTest::Test

  def setup
    @nemo = Fish.new("Nemo")
    @fishy = Fish.new("Fishy")
    @eric = Fish.new("Eric")

    @fishies = [@nemo, @fishy, @eric]
    @river = River.new(@fishies)

    @harry = Bear.new("Harry", "brown")
    @joe = Bear.new("Joe", "grizzly")
    @mary = Bear.new("Mary", "koala")
  end

  def test_bear_name
    assert_equal("Harry", @harry.name)
    assert_equal("Joe", @joe.name)
    assert_equal("Mary", @mary.name)
  end

  def test_bear_type
    assert_equal("brown", @harry.type)
    assert_equal("grizzly", @joe.type)
    assert_equal("koala", @mary.type)
  end

  def test_bear_food
    assert_equal([], @harry.food)
    assert_equal([], @joe.food)
    assert_equal([], @mary.food)
  end

  def test_bear_roar
    assert_equal("ROOARRRRRGGGHHHH", @harry.roar)
    assert_equal("ROOARRRRRGGGHHHH", @joe.roar)
    assert_equal("ROOARRRRRGGGHHHH", @mary.roar)
  end

  def test_fish_name
    assert_equal("Nemo", @nemo.name)
    assert_equal("Fishy", @fishy.name)
    assert_equal("Eric", @eric.name)
  end

  def test_num_fishes_in_river
    assert_equal(3, @river.count_fish)
  end

  def test_get_fish
    fishy = @river.get_fish()
    assert_equal("Eric", @eric.name())
  end

  def test_take_fish_from_river
    @harry.take_fish_from(@river)
    assert_equal(1, @harry.food_count)
    assert_equal(2, @river.count_fish)
  end

  def test_take_fish_from_empty_river
    @harry.take_fish_from(@river)
    @harry.take_fish_from(@river)
    @harry.take_fish_from(@river)
    @harry.take_fish_from(@river)
    assert_equal(3, @harry.food_count)
    assert_equal(0, @river.count_fish)
  end
end