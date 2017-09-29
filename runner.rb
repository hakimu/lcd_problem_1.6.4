require_relative 'app'
require_relative 'lcd'

file = ARGV[0]
File.open(file) do |f|
  f.each_line do |line|
    number,size = line.split(" ")
    lcd = LCD.new(number,size)
    puts lcd.output
  end
end
