#if end 

#run_code_inside = false
#puts "Code before if...end"
#if run_code_inside
#puts "code inside"
#end
#puts "Code after if...end"

#if else end

#chance_of_rain = 0.2
#puts "Let's go outside!"
#if chance_of_rain > 0.5
#puts "Pack an umbrella!"
#else
#puts "Enjoy the fine day!"
#end
#puts "Oh, and always wear sunscreen!"

#In an if...else...end statement, if the expression to the right of if evaluates true, the work between if and else is run. If the expression to the right of if evaluates false, the code between else and end runs

#if elseif else end 

#chance_of_rain = 0.2
#if chance_of_rain <= 0.25
#puts "Pack a sun shelter!"
#elsif (chance_of_rain > 0.25 && chance_of_rain < 0.75)
#puts "Pack an umbrella!"
#else
#puts "Stay home and read Hegel."
#end

#elseif allows another variable to be in play where chance of rain falls in the bracket of 0.25 and 0.75

#statement modifier 

#puts "You know what year it is??"
#this_year = 2019
#puts "Hey, it's 2019!" if this_year == 2019

#if this_year == 2019 makes it so that it is only said if we are in 2019



chance_of_botstuff = 0.5
if chance_of_botstuff >= 0.75
  puts "serious botstuff"
elsif (chance_of_botstuff> 0.25 && chance_of_botstuff < 0.75)
puts "botstuff"
else 
  puts "silent botstuff"
end
  
