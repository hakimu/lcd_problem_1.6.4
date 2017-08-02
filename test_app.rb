require 'minitest/autorun'
require 'minitest/rg'


require_relative 'app'

class NumberTest < Minitest::Unit::TestCase

  def test_generate_3_size_1
    expected = [[" ","-"," "],
                [" "," ","|"],
                [" ","-"," "],
                [" "," ","|"],
                [" ","-"," "]]
    assert_equal expected, Number.generate_3(1)
  end

  def test_generate_3_size_2
    expected = [[" ","-","-"," "],
                [" "," "," ","|"],
                [" "," "," ","|"],
                [" ","-","-"," "],
                [" "," "," ","|"],
                [" "," "," ","|"],
                [" ","-","-"," "]]
    assert_equal expected, Number.generate_3(2)
  end

end

  


