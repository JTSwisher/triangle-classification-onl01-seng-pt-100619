class Triangle
 attr_reader :s1, :s2, :s3 
 
 def initialize(s1,s2,s3)
   @s1 = s1 
   @s2 = s2 
   @s3 = s3
 end 
 
 def kind
   if s1 == s2 && s2 == s3 
     :equilateral
   elsif s1 == s2 || s2 == s3 || s1 == s3
     :isoceles 
   else 
     :scalene 
   end 
 end 
 
 class TraingleError < StandardError 
  end 
 
 
end