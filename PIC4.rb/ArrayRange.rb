#Intro:
# A 'range' is a data set with start and end values and a sequence of values in between. Ranges can be found everywhere: The months January to December, the numbers 0 to 9, lines 50 through 67 in code and etc. Ruby supports ranges and allows us to use ranges in a vareity of ways.

#Demostrate range:
#Ruby ranges are a set of values with a beginning and an end. The values in a range can be numbers, characters, strings or objects. It is written using start_point..end_point literals. It provides flexiblity to the code and reduces its size.
#Parenthesis are not neccessary to define a range, but if you want to call methods on your range you will need them.

for i in 0..3 # this will go from 0 to 3 as it wasn't neccessary to define the range as Ruby knows integers 
  puts i 
end 

for names in "Bruno".."luis" 
names = ["Bruno", "Cem", "luis"] #by defining names the range has now been registered for ruby to see
  puts names
end

#inclusive and Exclusive range:
#Ruby has two operators available to generate a range of values. The inclusive two-dot (..) operator and the exclusive three-dot operator (...). The inclusive operator) includes both the first and last value in the range. The exclusive (...) range operator excludes the last value from the sequence. For example

1..10 #using this will count 1 to 10 
for i in 1...10 #this will count 1 to 9 
 puts i 
 end
 
 #Generate an Array with range:
 #The first and perhaps most natural use of ranges is to express a sequence. Sequences have a start point, an end point, and a way to produce successive values in the sequence. In order to convert a range to an array, we use the 'to_a' method:
 
 p (1..10).to_a #his creates an array. 
