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

  def test_draw_multiple_double_verticle
    number_2 = Number.new
    number_3 = Number.new
    number_4 = Number.new
    expected_2 = [
      " |  |",
      " |  |" 
    ]
    expected_3 = [
      " |   |",
      " |   |",
      " |   |" 
    ]
    expected_4 = [
      " |    |",
      " |    |",
      " |    |",
      " |    |"
    ]
    number_2.draw_double_verticle(2)
    number_3.draw_double_verticle(3)
    number_4.draw_double_verticle(4)
    assert_equal expected_2, number_2.output
    assert_equal expected_3, number_3.output
    assert_equal expected_4, number_4.output
  end

end

  


