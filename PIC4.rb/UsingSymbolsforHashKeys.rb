#Intro 
#We saw that hashes are data structures comprised of key/value pairs. We also saw that we can create hashes simply by writing out key/value pairs wrapped in curly braces:
dog_one = {
  :name => "Luca",
  :breed => "German Shepherd"
}
dog_two = {
  :name => "Lola",
  :breed => "Giant Schnauzer"
}

#Going to discuss symbols and why they are ideal to use as keys in our hashes. They are so frequently preferred in fact that ruby has an alternative syntax for writing hashes with symbols as keys

#Using symbols for hash keys:
#symbols are a scalar data type. They share some similarities with strings, but instead of being wrapped in quotations, symbols always start with a colon (:):

p :i_am_a_symbol 

#Every piece of data including the symbol above, takes up a small amount of memory on the computer. When we write out a symbol like above, ruby allocates some memory to that piece of data. If we write out :i_am_a_symbol ruby will refer back to that same allocation in memory. 

p :i_am_a_symbol.object_id 

#everytime we call the object_id we will get the same integer back. This is rubys representation of the location in the memory of where it is stored.
#What happens when we do the same for a string?

p "I am a string".object_id 
p "I am a string".object_id 

#Different integers are returned. Although these strings are identical when written, they take up separate allocations of memory. Every string we write is given a new allocation. This is because string data can change and ruby needs to take that into account.

#Symbols, unlike strings, cannot be changed. That is to say, symbols are immutable. They are unique and once created always refer to the same point in memory. This works well for hash keys. Once a key/value pair is defined in a hash, we might change the value of the pair, but we will likely never need to change the key.
#Back to our first example 

dog_one = {
  :name => "Luca",
  :breed => "German Shepherd"
}

dog_two = {
  :name => "Lola",
  :breed => "Giant Schnauzer"
}

#The symbols :name and :breed are used multiple times in separate hashes, but refer to the same allocated memory. By using symbols for our keys we only use one allocation. For this reason, symbols are almost always the best choice for keys when creating hashes.

#Using the alternate hash syntax: 
#When using symbols for key, we have the option of using an alternative syntax when defining a hash: 

p dog_one = {
  name: "Luca",
  breed: "German Shepherd"
}
 
p dog_two = {
  name: "Lola",
  breed: "Giant Schnauzer"
}; 

#The symbols :name :breed no longer have a colon before them. Instead they have a colon immediately after in place of the hash rocket (=>) 
#This syntax only works for keys that are symbols but is similar in syntax to how other languages like JavaScript write their key/value pair. 

#Symbols are a great choice to use for keys when constructing hashes. Although keys can be made from whatever data type we feel is best, symbols come with some advantage. No matter how many times a symbol is written in your code, ruby will consider it to be the same thing, allocatin just one location in the memory.  
  
  
  
  
  
  