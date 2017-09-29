require_relative 'app'

class LCD
  
  def initialize(number,size)
    @input = []
    @size = size.to_i
    number.each_char do |c|
      @input << Number.new.generate(c,@size)
    end
   
  end

  def output
    number_array = []
    (0..(2*@size+2)).each do |row_index|
      row = ""
      @input.each_with_index do |element, column_index|
        row << element[row_index]
        row << " " unless column_index == @input.size-1
      end
      number_array << row
    end
    number_array
  end

end
