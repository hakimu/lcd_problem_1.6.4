# Create a hash for the numbers with the output for the corresponding number?
# Use size.times or something similar to output the proper string?
# Use 1.upto(number) to output the proper string?



size = 3

# foo = <<-STR
#  #{'-'*size}
# #{("|"+"\n")*size} #{("|"+"\n")*size}
# STR

# puts foo

numbers = {
  0 => <<-STR
 #{"-"*size}
#{"|"*size} #{"|"*size}
 #{"-"*size}
STR
}

zero = [[" ", "-", " "],["|"," ","|"],[" ", "-", " "]]
zero.each do |z|
  z.each do |y|
    # require 'pry';binding.pry
    puts y*size+"\n"
  end
end

# puts numbers[0]

three = [[" ","-"," "],
         [" "," ","|"],
         [" ","-"," "],
         [" "," ","|"],
         [" ","-"," "]]

three_size_two = [[" ","-","-"," "],
                  [" "," "," ","|"],
                  [" "," "," ","|"],
                  [" ","-","-"," "],
                  [" "," "," ","|"],
                  [" "," "," ","|"],
                  [" ","-","-"," "]]

                  