require 'minitest/autorun'
require 'minitest/rg'


require_relative 'app'

class NumberTest < Minitest::Unit::TestCase

  def test_generate_3_size_1
    expected = [
      " - ",
      "  |",
      " - ",
      "  |",
      " - "
    ]
    assert_equal expected, Number.new.generate_3(1)
  end

  def test_generate_3_size_2
    expected = [
      " -- ",
      "   |",
      "   |",
      " -- ",
      "   |",
      "   |",
      " -- "
    ]
    assert_equal expected, Number.new.generate_3(2)
  end

  def test_generate_3_size_3
    expected = [
      " --- ",
      "    |",
      "    |",
      "    |",
      " --- ",
      "    |",
      "    |",
      "    |",
      " --- ",
    ]
    assert_equal expected, Number.new.generate_3(3)
  end

  def test_draw_double_verticle
    number = Number.new
    expected = [
      " | |"
    ]
    number.draw_double_verticle(1)
    assert_equal expected, number.output
  end



end

  


