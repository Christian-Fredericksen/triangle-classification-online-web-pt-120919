require "pry"
class Triangle
  attr_accessor :side_a, :side_b, :side_c, :all_sides,
  :equilateral, :isosceles, :scalene
    
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @all_sides = [side_a, side_b, side_c]
  end
  
  def kind 
    if valid? == false
      raise TriangleError
    elsif side_a == side_b && side_b == side_c
      return :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      return :isosceles
    elsif side_a != side_b && side_b != side_c && side_a != side_c
      return :scalene
    end
  end
  
  def valid?
    all_sides.each do |s|
      binding.pry 
      if s.side_a <= 0 || s.side_b <= 0 || s.side_c <= 0
        false 
        elsif s.side_a < s.side_b && s.side_a < s.side_c ||
        s.side_b < s.side_a && s.side_b < s.side_c ||
        s.side_c < s.side_b && s.side_c < s.side_a
        false 
      else 
        true 
      end
    end
  end
  
  class TriangleError < StandardError
    # def message
    #   "Some message"
    # end
  end
  
  
end
