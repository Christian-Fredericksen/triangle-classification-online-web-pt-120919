class Triangle
  attr_accessor :side_a, :side_b, :side_c,
  :equilateral, :isosceles, :scalene
    @@all_sides = []
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def kind 
    if side_a < 1 || side_b < 1 || side_c < 1 
      begin
        raise TriangleError
      rescue TriangleError => error 
        puts error.message
      end
    elsif side_a == side_b && side_b == side_c
      return :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      return :isosceles
    elsif side_a != side_b && side_b != side_c && side_a != side_c
      return :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "Some message"
    end
  end
  
  
end
