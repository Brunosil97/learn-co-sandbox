#Intro:

#We have seen a few examples of loops so far, one example being times:

number = 5 
number.times do 
  puts "I print out #{number} times"
end

#In another example, we have seen how we can use a while loop to access each element in an array:

counter = 0
array = [1,2,3,4,5]
 
while array[counter] do
  puts array[counter]
  counter += 1
end

#Repetition is so common that ruby provides a variety of loops as well as multiple ways to use those loops. In this lesson, we're going to explore an additional component of loops.

#Ruby code blocks:
#A code block is a way of grouping statements togehter. They can be betwwen do ... end or { } 

while true do
  puts 'hello' #for exampple do till end is block 
end

#The code block here defines what will happen during a single iteration of our while loop. Code blocks can also be written with cury braces: 

while true {
  puts 'hello'
}

#Block parameters: 
#Depending on the method, blocks can receive parameters that are accessible from within the block.
#When using a times loop, for instance, we have access to a block parameter that is equal to an integer. In the example below we named the parameter index:

5.times do |index|
  puts index  #this loop outputs, 0,1,2,3,4
end

#Block parameters are surrounded by | symbols, sometimes referred to as 'pipes'. Block parameters are similar to the parameters for a method in that we provide the name. If instead of index, we wanted to name it hot_dog, the results would be the same.

5.times do |hot_dog|
  puts hot_dog    #this will output 0,1,2,3,4
end

#While we can name the parameter whatever we like, the value will be determined by what the code block is related to. In this case with times, the value of the parameter is an integer.The integer will change everytime the block is called.
#We see here that using a block parameter with our times loop, we were able to build a simple counter, but without the need of an external variable like counter.
#The values block parameters represent are determined by what that code is related to. The 'while' loop, for instance, doesn't have a block parameter. Even though it has a code block. 

#Combining arrays, loops and block parameters:
#Previously we were able to use an array, a while loop and a variable to output each element:

counter = 0
array = [1,2,3,4,5]
 
while array[counter] do
  puts array[counter]
  counter += 1
end

#notice that we have to use counter, a variable defined outside the block. Being able to write a loop that doesn't rely on an outside variable would make this code a little bit cleaner.

array = [1,2,3,4,5]
length = array.length 

length.times do |index|
  puts array[index]
end

#We eliminated the need for counter by using block parameter.







