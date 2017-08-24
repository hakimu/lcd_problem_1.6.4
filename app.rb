class Number

  attr_accessor :output

  def initialize
    @output = []
  end

  def generate_3(size)
    draw_horizontal_line(size)
    draw_vertical_line(size)
    draw_horizontal_line(size)
    draw_vertical_line(size)
    draw_horizontal_line(size)
    @output
  end

  def generate_4(size)
   draw_line_of_space(size)
   draw_double_verticle(size)
   draw_horizontal_line_four(size)
   draw_vertical_line_four(size)
   @output
  end

  def draw_horizontal_line(size)
    @output << " #{'-'*size} "
  end

  def draw_vertical_line(size)
    size.times {@output << "#{' '*(size+1)}|"}
  end

  def draw_double_verticle(size)
    size.times {@output << " |#{' '*size}|"}
  end

  def draw_line_of_space(size)
    # size.times {@output << "#{'    '*size}"}
    @output << "#{'    '*(size)}"
  end

  def draw_horizontal_line_four(size)
    @output << "  #{'-'*size} "
  end

  def draw_vertical_line_four(size)
    size.times {@output << " #{'  '*size}|"}
  end

end



