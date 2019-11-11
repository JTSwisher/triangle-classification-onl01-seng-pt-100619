class Triangle
 attr_accessor :a, :b, :c 
 
 def initialize(a,b,c)
   @a = a 
   @b = b 
   @c = c 
 end 
 
 def kind(a,b,c)
   if a == b && a ==c && b == c 
     :equilateral
   elsif 
     :isoceles 
   else a != b && a != c && b != c 
     :scalene 
   
 end 
 
 class TraingleError < StandardError 
 end 
 
 
end
