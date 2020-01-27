#Intro:
#We know what arrays are and what they look like. 

#create an array:
#There are few different ways to make a new array. You can use the literal constructor or the class constructor.

#The literal constructor:

my_array = []

#The class constructor:

my_array = Array.new 
#not to worry about class constructor for now 

#To make an array that isn't empty, you can separate each item, known as an element, by a , (comma) and wrap all the elements inside [] ("square brackets")

puppies = ["bulldog", "terrier", "poodle"]
p puppies #p prints the arrays
random_numbers = [ 2, 5, 6, 8, 30050] 
mixed = ["this", "array", 7, 20, "has", 45, "integers", "&", "strings", 309]

#It is possibe to create an array that contains different data types. In other words, you could create an array like the one above that stores both strings and integers. However this is generally discouraged. It's best to keep your arrays populated with only one kind of element.

#Remember that arrays hold collections of similar things: other programmers will likely want to visit each element. If I'm totalling an array called 'prices' and the string "baby shark" is inside, im not going to get the result I expect when I try to add the total of all prices

#Add items to an array:
#If an array is a storage container for a list of data, then we can imagine adding and removing individual items. 

#The shovel method:
#The shovel method employs the "shovel" operator (<<) and allows you to add items onto the end of an array. EG:

famous_cat = ["lil' bub", "grumpy cat", "Maru"]
famous_cat << "nala cat"
p famous_cat 

#The push method:
#Calling .push on an array with an argument will add that element to the end of the array. EG:

famous_cat.push("nala cat")

#The .unshift method:
#To add an element to the front of an array, you can call the .unshift method on it with an argument, EG:

famous_cat.unshift("nala cat") 

#Remove items from an array:

#the .pop method:
#calling .pop on an array will remove the last item from the end of the array. The .pop method will also supply the removed element as its return:

famous_dogs = ["bruno", "luis", "cem"]
cem_dog = famous_dogs.pop 
p famous_dogs  #prints the array without the last item
p cem_dog  #prints the last removed element as its return 

#The .shift method:
#calling .shift on an array will remove the first item from the front of the array.The .shift method will also supply the removed element as a return:

famous_dogs = ["bruno", "luis", "cem"]
bruno = famous_dogs.shift
p famous_dogs
p bruno 

#Retrieve items from Array:
#Elements in an array are associated with a number that represents their order. Called the index. Arrays begin with their indexes at 0, so the first element in an array will always be "index 0":

famous_cats = ["Cheshire Cat", "Puss in Boots", "Garfield"]
#To access one of these items we csn type the name of the array followed by the index
famous_cats[1]
famous_cats[0]
p famous_cats[2]
#We can also access array elements by using negative numbers. The last item of an array is considered to be stored at an index of -1 
famous_cats[-1] #would return "Garfield"
p famous_cats

#Identify elements in an array based on their index number: 
#To discover the index number of an element within an array, we can use the .index() method. Using this on an array with an argument inside will return the first index number of an element matching that argument. eg:

famous_cats.index("Puss in Boots") #would return 1 
famous_cats.index("Maru") #would return nil as it is non existent 

#Update Array element value using its index number:
#let's imagine we have an array but we want to update a single value in it.

p picnic_ingredients = ["wine", "jalapeños", "donkey feed"]

#lets change donkey feed element 

p picnic_ingredients[2] = "Belgian chocolate"
p picnic_ingredients

#the return value shows the new value that was entered "Belgian chocolate" 


