
#Intro:
#Looking how we get values from a hash using its keys. If an array is a list in which we access index items by their number, a hash is a dictionary in which we access values by their key.

#Retrieving data from hashes:
#Retriving data from a hash is similar to retrieving data from an array, but instead of giving an array the index number in brackets [i] we give a hash the name of the key [key]. The hash will return the value associated with the key

p pets = {"cats" => "Maru", "dog" => "Pluto"}
p pets["cats"] #prints maru 

#Using [] is referred to as "bracket notation". Keep in mind, keys can be symbols instead of strings. The hash lookup works just the same: 

meals = {:breakfast => "cereal", :lunch => "peanut butter and jelly sandwich", :dinner => "mushroom risotto"}
p meals[:breakfast] #prints cereal 

#It will also work if we use Integer for keys. It is important to remember that when using the bracket method on a hash, ruby is not looking for the index like it would in an array. Instead ruby is looking for the key that matches whatever is inside the bracket and return the associated value:

healthy_things = {1 => "learn to garden", 2 => "plant seeds", 10 => "eat vegetables"}
p healthy_things[10]

#we can also use variables inside the brackets:

key = :name 
user_info = {:name => "Ada", :email => "ada.lovelace@famous_computer_inventors.com"}
p user_info[key] # this will print out "Ada" 

#Handle a nil response when no key is found:
#If we use the bracket notation and pass in a value that does not match a key on the hash, Ruby will return nil by default:

grocery_items = {:apples => 10, :pears => 4, :peaches => 2, :plums => 13}
p grocery_items[:rambutans] #this will print nil 

#Very useful. Nil is falsy while any data type value is truthy. This behaviour allows us to easily check if a hash has a key/value/ pair or not as we can use the bracket method in a conditional statement: 

if grocery_items[:rambutan]
  puts "Rambutan present!"
else
  puts "No rambutan." #this turns nil into telling us that there is no rambutan 
end 

#Given a hash and its key we can retrieve al lthe values present in that hash. We are now able to create hashes as a way to store associated data and can use the bracket method to retrieve that stored data as needed.       

