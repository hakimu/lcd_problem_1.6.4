require_relative 'app'

class LCD
  
  def initialize(number)
    @number = number
  end

  def output
    number_array = []
    two = Number.new.generate(2,1)
    five = Number.new.generate(5,1)
    (0..4).each do |n|
      number_array << two[n] +" "+ five[n]
    end
    number_array
  end

end