require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')


class RiverTest < MiniTest::Test

def setup
  @river = River.new("Amazon")
  @fish_1 = Fish.new("Trouty")
  @fish_2 = Fish.new("Coddy")
end

def test_number_of_fish
  assert_equal(0,@river.number_of_fish)
end

def test_add_fish
  @river.add_fish("Flippy")
  assert_equal(1,@river.number_of_fish)
  @river.add_fish("Goldie")
  assert_equal(2,@river.number_of_fish)
  @river.add_fish("Billie")
  assert_equal(3,@river.number_of_fish)
end

def test_remove_fish
  @river.add_fish("Flippy")
  assert_equal(1,@river.number_of_fish)
  @river.add_fish("Goldie")
  assert_equal(2,@river.number_of_fish)
  @river.add_fish("Billie")
  assert_equal(3,@river.number_of_fish)
  @river.remove_fish("Goldie")
  assert_equal(2,@river.number_of_fish)
end

def test_remove_fish__2
  @river.add_fish(@fish_1)
  @river.add_fish(@fish_2)
  @river.remove_fish(@fish_2)
  assert_equal(1,@river.number_of_fish)
end



end
