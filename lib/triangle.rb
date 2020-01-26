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
    if side_a == side_b && side_b == side_c
      return :equilateral
    elsif side_a == side_b || side_b == side_c
      return :isosceles
    end
      
  end
  
  
end
