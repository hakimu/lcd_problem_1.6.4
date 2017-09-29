require 'minitest/autorun'
# require 'minitest/rg'

require_relative 'app'
require_relative 'lcd'

class LCDTest < Minitest::Test
  def test_output_two_numbers
    expected = [
      " -   - ",
      "  | |  ",
      " -   - ",
      "|     |",
      " -   - "
    ]
    assert_equal expected, LCD.new("25","1").output
  end

  def test_size_two
      expected = [
      " --   -- ",
      "   | |   ",
      "   | |   ",
      " --   -- ",
      "|       |",
      "|       |",
      " --   -- "
    ]
    assert_equal expected, LCD.new("25","2").output

  end


end

