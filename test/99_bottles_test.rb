require "minitest/autorun"
require "./test/test_helper.rb"
require "./lib/99_bottles.rb"

class BottlesTest < Minitest::Test

  def test_the_first_verse
    expected = "99 bottles of beer on the wall, " +
    "99 bottles of beer.\n" +
    "Take one down and pass it around, " +
    "98 bottles of beer on the wall.\n"

    assert_equal expected, Bottles.new.verse(99)
  end

  def test_another_verse
    expected = "3 bottles of beer on the wall, " +
    "3 bottles of beer.\n" +
    "Take one down and pass it around, " +
    "2 bottles of beer on the wall.\n"

    assert_equal expected, Bottles.new.verse(3)
  end

end
