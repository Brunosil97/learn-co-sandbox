#Goals: Compare Collection Types

#Intro: 
#Thus far we've been storing simple data in our variables, constant scalar values like: 
#string, integer, float, etx

#Sometimes we want to refer to a collection of values by a common name. A grocery list is sometimhing that contains multiple small elements. 
#Ordered lists in Ruby are called "Arrays"

#Another collection type we know about from daily life are dictionaries: We use one thing to look up a value. Lookup table, or dictionaries in Ruby are called "Hashes"
#learning to store and to work with the data held in data structures will be the focus of this module

#Comparing collection data types to scalar data types:
#'string' 'integer' and 'float' are scalar data types. They can be put on a scale.
#A collection type holds multple pieces of data and allow us to talk about the collection as an abstraction. "The beatles" is an 'abstraction' used to refer to the individuals John, Paul, George and Ringo. Cause collection types cant be put on a scale they are not called scalar data. 

#Define Array:
#An Array is a collection that holds multiple pieces of data under a single name. "countries" eg.
#The beatles. 0 - "John Lennon" 1 - "Paul McCartney" etc 
#Programmers like 0 and most programming languages start their index at 0. 

#To define this list we would type: 

#the_beatles = ["John Lennon", "Paul McCartney", "Ringo Starr", "George Harrison"]

#You provide a name (the_beatles), an assignment operator (=) and then a list of data seperated by commas, that should go in the Array, wrapped in [].

#'Array' element/member: 
#The individual pieces of data inside an array are called 'elements'. Some people also call the elements the members. In a collection of the_beatles, the string "George Harrison" is an element. 

#Array Index:
#Arrays provide a number that identifies each element called an index. The index for the element "Ringo Starr" above is 2. 

#Define Hash:
#Arrays are like tables that have an identifier that is an integer. If we let the indentifier be a string or a symbol instead of an integer then we'd basically be describing a hash. What if we took the beatles and listed them by the instrument they palyed.
# :lead guitar "George Harrison" :drums "Ringo Starr"
#A 'hash' is a collection data type that holds multiple pieces of date under a collected name whose members can be read and updated by using a key instead of an indext. 

#A hash table can look like this. :livrpool "The beatles" :manchester "the smiths"

# You provide a name (english_music_by_city), an assignment operator (=), and then a list of pairs, seperated by commas, that should go in the hash, wrapped in {}. Each pair should have a name (typically a 'symbol') a "rocket" symbol (=>) and a value. 

#Hash Key:
#Hash es are like tables that have a name that is a piece of date, typically a symbol or a String. This identifier is called a key. 
#Hash Value:
#The value that's returned from asking a hash what a given key points to is known as the key's value.

#Nesting of collection data structures demo:
#What's amazing thing about collections is that they can contain other collections as part of a process called nesting. example:

english_music_by_city = {
  :manchester => [
    {
      :band_name => "The Smiths",
      :member_names => ["Morrissey", "Johnny", "Andy", "Mike"]
    },
    {
      :band_name => "Joy Division",
      :member_names => ["Peter", "Stephen", "Bernard", "Ian"]
    },
  ]
}

#we can use the lookup operator ( [] ) to dig into this nested collection and get interesting infromation out:

p english_music_by_city[:manchester][0][:band_name] 
p english_music_by_city[:manchester][0][:member_names]
puts "There were #{english_music_by_city[:manchester][0][:member_names.length]} members in #{english_music_by_city[:manchester][0][:band_name]}"





