class Number

  def self.generate_3(size)
    input = [[" ","-"," "],
             [" "," ","|"],
             [" ","-"," "],
             [" "," ","|"],
             [" ","-"," "]]
    output = []
    input.each do |row|
      if row.include?("-")
        new_row = []
        row.each do |element|
          if element == " "
            new_row << element
          elsif element == "-"
            size.times do
              new_row << element
            end
          end
        end
        output << new_row
      elsif row.include?("|")
        case size
          when 1
            output << row
          else
            output << row.unshift(" ") << row
        end
      end
    end
    output
  end

end

puts Number.generate_3(1)

