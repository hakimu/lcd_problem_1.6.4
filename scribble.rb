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

