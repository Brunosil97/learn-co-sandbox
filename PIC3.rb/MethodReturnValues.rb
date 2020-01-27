#Goals: Identifiy implicit return values in RUBY, and recognise the explicit return keyword 

#Ruby returns a value when it evaluates an expression. Methods also have return values

#Implicit return values in Ruby:
#Implicit return means that the last expression in a method's implementation is the return value of the method itself.

def a_method(a, b)
  puts "hi"
  a + b
end
a_method(1,2)

#Just a note that the 'return' value of puts and prints is NIL

#A common ruby bug:

def a_method(a,b)
  puts "I got #{a}"
  puts "I got #{b}"
  sum = a + b
  puts "I got #{sum}" #because of puts and its the last line it returns nil
  sum #by putting sum at the end instead of the above line iit will now have a return value
end
 
a_method(2,3)

#If you pay attention to the return value you know that 'puts' is always nil! Because ruby methods always 'return' the return value of the last expression then the method above would return nil. 

#'p' prints as well as returns the input. Might be the right tool depending on situation 

#Recognising the explicit 'return' keyword:
#This is typically used to exit early from a method with a specific return value. For eg:

def stylish_chef
  best_hairstyle = "Guy Fieri"
  return "Martha Stewart" #by writing return here the return value becomes Martha Stewart, and not the last line of code 'Guy Fieri
  "Guy Fieri"
end

#There are instances where you might want to use the 'return' instead of relying on implicit returns. What if you decided that a slow calculation could be avoided if a simple condition were true. This pattern is known as "guard clause" - It helps avoid if else end conditional. 

def get_stock_market_data(date)
  return nil if is_a_weekend?(date)
  # Imagine an expensive, slow calculation hereafter
end





