#A case statement is a powerful tool to test for performing selection. Used to multiple conditions against one value. 

#Translating a CASE statement from if,elsif,else,end

#elsif:

#name = "Alice"
 
#if name == "Alice"
  #puts "Hello, Alice!"
#elsif name == "The White Rabbit"
  #puts "Don't be late, White Rabbit"
#elsif name == "The Mad Hatter"
  #puts "Welcome to the tea party, Mad Hatter"
#elsif name == "The Queen of Hearts"
  #puts "Please don't chop off my head!"
#else
  #puts "Whoooo are you?"
#end 

#With above, we always test name, we always compare with == and we have the "none match" in else

#Here is one with the case that cuts down typing:

name = "Alice"

case name
 
  when "Alice" # translated: when name == "Alice"
    puts "Hello, Alice!"
  when "The White Rabbit"
    puts "Don't be late, White Rabbit"
  when "The Mad Hatter"
    puts "Welcome to the tea party, Mad Hatter"
  when "The Queen of Hearts"
    puts "Please don't chop off my head!"
  else 
    puts "Whoooo are you?"
end

#CASE statement always begins with the case keeyword. Next, the 'when' keyword is followed by a condition.Finally the functionality that we wish to happen when the condition is met is placed on an indented line directly under the when line. For example:

current_weather = "raining"
 
case current_weather
  when "sunny"
    puts "grab some sunscreen!"
  when "raining"
    puts "grab an umbrella"
  when "snowing"
    puts "bundle up"
end

#We set current_weather to "raining". Next we use when statements to describe a list of possible matches. Since current_weather == "raining" we expect this code to put +grab an unbrella"

