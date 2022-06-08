require "byebug"
#Exercise 1 - sum_to
#Write a function sum_to(n) that uses recursion to calculate 
#the sum from 1 to n (inclusive of n).

 def sum_to(n)
    return n if n<2
    return nil if n<0
    sum = n + sum_to(n-1)
 end

  # Test Cases
#  p sum_to(5)  # => returns 15
#  p sum_to(1)  # => returns 1
#  p sum_to(9)  # => returns 45
#  p sum_to(-8)  # => returns nil

  #Exercise 2 - add_numbers
#Write a function add_numbers(nums_array) that takes in 
#an array of Integers and returns the sum of those numbers. 
#Write this method recursively.

def add_numbers(nums_array)
    
    return nums_array[-1] if nums_array.length<=1
  
    # return nums_array.pop if nums_array.length ==1
    nums_array[-1] + add_numbers(nums_array[0...-1])
end

  # Test Cases
# p  add_numbers([1,2,3,4]) # => returns 10
#  p  add_numbers([3]) # => returns 3
# p  add_numbers([-80,34,7]) # => returns -39
#  p  add_numbers([]) # => returns nil

#Exercise 3 - Gamma Function
#Let's write a method that will solve Gamma Function recursively. 
#The Gamma Function is defined Γ(n) = (n-1)!.

def gamma_fnc(num)
    return num if num ==1
    return nil if num<1
    (num-1) * gamma_fnc(num-1)
end
  # Test Cases
#  p gamma_fnc(0)  # => returns nil
#  p gamma_fnc(1)  # => returns 1
#  p gamma_fnc(4)  # => returns 6
#  p gamma_fnc(8)  # => returns 5040

#Exercise 4 - Ice Cream Shop
#Write a function ice_cream_shop(flavors, favorite) that takes in 
#an array of ice cream flavors available at the ice cream shop, 
#as well as the user's favorite ice cream flavor. 
#Recursively find out whether or not the shop offers their favorite flavor.
def ice_cream_shop(flavors, favorite)
    return false if flavors.length ==0
    return true if favorite == flavors[-1] || ice_cream_shop(flavors[0...-1], favorite)
    false
end
  # Test Cases
   p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
  p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
  p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
p  ice_cream_shop([], 'honey lavender')  # => returns false

#Exercise 5 - Reverse
#Write a function reverse(string) that takes in 
#a string and returns it reversed.

def reverse(string)
    return string if string.length <2 
    string = string[-1] + reverse(string[0..-2])
end

#   # Test Cases
# p  reverse("house") # => "esuoh"
# p  reverse("dog") # => "god"
# p  reverse("atom") # => "mota"
# p  reverse("q") # => "q"
# p  reverse("id") # => "di"
# p  reverse("") # => ""