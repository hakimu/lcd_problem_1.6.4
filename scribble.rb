require_relative 'app'

class LCD

  def initialize(display_number,size)
    @number = display_number
    @size = size
  end

  def parse_display_number
    @number.split("").map(&:to_i)
  end

   def parse_display_size
    @number.split("").map(&:to_i)
  end

  def output
    two = Number.new.generate(parse_display_number[0],1)
    five = Number.new.generate(parse_display_number[1],1)
    [two,five]
  end

end

puts LCD.new("25","1").parse_display_number.inspect
puts LCD.new("25","1").output

# Create a hash for the numbers with the output for the corresponding number?
# Use size.times or something similar to output the proper string?
# Use 1.upto(number) to output the proper string?

# class Number

#   attr_accessor :output

#   def initialize
#     @output = []
#   end

#   def output_number(num)
#     num.times {@output << "#{'+'}"*num } 
#   end
# end

# number = Number.new
# puts number.inspect
# number.output_number(10)
# puts number.inspect
# puts number.inspect

# expected_four = [
#       "    ",
#       " | |",
#       "  - ",
#       "   |"  
#     ]
# expected_three = [
#       " - ",
#       "  |",
#       " - ",
#       "  |",
#       " - "
#     ]

# puts expected_four[2].size
# puts expected_three[2].size


