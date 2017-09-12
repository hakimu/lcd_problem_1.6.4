require 'minitest/autorun'
require 'minitest/rg'


require_relative 'app'
require_relative 'lcd'

class LCDTest < Minitest::Unit::TestCase
  def test_output_two_numbers
    expected = [
      " -   - ",
      "  | |  ",
      " -   - ",
      "|     |",
      " -   - "
    ]
    assert_equal expected, LCD.new("25").output
  end
end

