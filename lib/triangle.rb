class Triangle
 attr_accessor :a, :b, :c 
 
 def initialize(a,b,c)
   @a = a 
   @b = b 
   @c = c 
 end 
 
 def kind(a,b,c)
   if a == b && b == c 
     :equilateral
   elsif a == b || b == c
     :isoceles 
   else a != b && b != c && a != c  
     :scalene 
   end 
 end 
 
 class TraingleError < StandardError 
 end 
 
 
end
