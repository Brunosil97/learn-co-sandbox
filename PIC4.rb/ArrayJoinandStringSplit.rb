#Intro:
#String split
#Array Join

#Join elements of an array with join to produce a string:

p ["this", "is", "a", "test"].join('')
p ["this", "is", "a", "test"].join('_')
p ["this", "is", "a", "test"].join('*') 
#whatever you add within '' will be added into the spaces amongst the new joined string

#create an array of words with ruby's %w literal:
#creating an array of words can be difficult to type with all thos "" characters rolling about. Ruby invented an operator called the Array of words literal.

p %w[this is also a test] #creates an array with seperate elements

# For method-chaining fun:
p %w[this is also a test].join(" ").capitalize #always to write an array that converts to a string

#Split a string into an array of words:
#If array join can turn an array of strings into one string, we can reverse the process with strings split method:

p "When in the course of human events".split("")

#note that when I did it it printed individual letters and not the words 