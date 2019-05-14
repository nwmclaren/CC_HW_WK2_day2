require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi")
    @river = River.new("Amazon")
    @fish = Fish.new("Billy")
  end

  def test_stomach_size
     assert_equal(0,@bear.stomach())
  end

  def test_add_fish
    @bear.add_fish(@fish)
    assert_equal(1,@bear.stomach())
  end

end
