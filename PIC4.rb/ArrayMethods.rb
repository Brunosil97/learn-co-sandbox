#Array Methods

#Intro:
#Now we look at other methods we can use with arrays, including how to sort elements in an array, how to find an element in an array and how to determine the size of an array

#sort an array:
#sometimes we need to rearrange the contents of an array in a certain order: for strings, this means alphabetically and for numerical value, this means from smallest number to highest numvber.

famous_cats = ["lil' bub", "grumpy cat", "maru"]
famous_cats.sort #by adding the ! it instantly sorts (only if you dont want original)
p famous_cats 
#here we see that the return value of famous_cats remains unchanged after using the sort method. 
#Because 'sort' returns a new array, we generally store it in another variable.

sort_cats = famous_cats.sort
p sort_cats

#NOTE: If you don't need the unsorted version of the array you can call 'sort!'. This will sort the existing array without requiring you to save the return into a new variable. The '!' is a ruby convention that indicates the method will do the operation in place. It will modify the receiver of the method (or the thing to the left of the dot)

#Reverse an Array:
#What if we want to arrange the elements in an array in the opposite order?
#we use .reverse method

famous_wizards = ["Dumbledore", "Gandalf", "Merlin"]
p famous_wizards.reverse
reverse_wizards = famous_wizards.reverse 
p reverse_wizards 

#Find the first and last elements of an Array: 
#The .first method will return the first element of an array. As with the other methods it does not chamge the return value of the original array. 

famous_cats = ["lil' bub", "grumpy cat", "Maru"]
p famous_cats.first 
famous_cats = ["lil' bub", "grumpy cat", "Maru"]
p famous_cats.last 

#Find out if an element is in an array:
#The .include? method will return a boolean of whether or not the array contains (or includes) the element submitted to it inside the parentheses

famous_cats = ["lil' bub", "grumpy cat", "Maru"]
p famous_cats.include?("Garfield")
p famous_cats.include?("Maru")

#since we are just returning true or false, the receiver of the method 'famous_cats' remains unchanged

#Find the size of an array: 
#A quick way to know how large an array is. In those cases we can use the .size method, which will return the number of elements in the array. 

famous_cats = ["lil' bub", "grumpy cat", "Maru"]
p famous_cats.size

#Although the arrays start with a 0 index this method returns the actual number of elements, starting from 1 

#the method .length does the same thing as .size 
#(all methods are case sensitive so must be lower case)





