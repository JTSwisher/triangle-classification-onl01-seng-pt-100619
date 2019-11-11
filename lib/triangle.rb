class Triangle
 attr_reader :s1, :s2, :s3 
 
 def initialize(s1,s2,s3)
   @s1 = s1 
   @s2 = s2 
   @s3 = s3
 end 
 
 def kind(s1,s2,s3)
   valid_triangle 
   if s1 == s2 && s2 == s3 
     :equilateral
   elsif s1 == s2 || s2 == s3 || s1 == s3
     :isoceles 
   else 
     :scalene 
   end 
 end 

 def valid_triangle 
    real_triangle = [(s1 + s2 > s3), (s2 + s3 > s1), (s1 + s3 > s2)]
    [s1,s2,s3].each {|s| real_triangle << false if s <= 0}
    raise triangle_error if real_triangle.include? (false) 
 end 
 
 class TriangleError < StandardError 
  end 
 
 
end