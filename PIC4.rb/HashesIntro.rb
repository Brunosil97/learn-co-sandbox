#Intro: 
#Up until this point, we've stored our data in a list form using arrays. An array is like a numbered list. It stores a group of items which are accessible via their location, or index number, in the list. A Hash, in comparison, is a "lookup table" like a dictionary.

#Imagine a grocery list: you need to go to the store and buy milk, eggs and bread. You could store your list like this:

groceries = ["milk", "eggs", "bread"]
#But now let's say we wanted to "look up" the prices of these items. We could write:

prices = [3.00, 2.15, 2.35] # milk, eggs, bread prices
#But wait, why not write this as:

prices = [2.35, 3.00, 2.15]  # bread, milk, eggs prices
#Well, that's perfectly legal as well to Ruby. But what we want is a way to associate the word "milk" to the price 3.00. A code comment isn't a strong enough bond between the String (grocery item) and the Float (price). When you need to associate a value with a lookup "key", you want a Hash.

#Hashes allow us to store named, or associated, data. Think of a dictionary or an address book. This allows us to store more complex collections of information than the arrays we've seen so far. With a hash, we can associate item names to prices.

#Define a Ruby Hash
#A hash is a collection of data that is separated into pairs of keys and values. Each key/value pair makes up one unit in the hash. The entire collection of key/value pairs, which are comma separated, is enclosed in curly braces {}:

{"key" => "value", "another_key" => "another value"}
#In this example, the String "key" is the key to the value "value". The key "another_key" is used to "point to" the String value, "another_value".

#Hash structure with key and value labeled

#As with Arrays, you can use white space to make it more friendly for humans to read:

{
  "key" => "value",
  "another_key" => "another value"
}
#Remember just a moment ago we were asking how to associate a grocery item to a price? Here's how a Hash allows us to do that:

prices = {
"bread" => 2.35,
"milk" =>  3.00,
"eggs" =>  2.15
}

#Define Hash Keys
#Keys are the things we "look up" with. In our grocery prices example, the keys are the Strings "bread", "milk", and "eggs".

#Hash keys can be any type of data but most of the time we use Strings (as seen in the grocery/prices example) or Symbols like the following:

{:name => "John Henry", :occupation => "Steel-driving man"}
#Somewhat confusingly, Ruby has another syntax for writing Hashes that have a Symbol as key. We call Hashes defined this way "JSON (pronounced 'Jay-Sawn') Hashes."

{name: "John Henry", occupation: "Steel-driving Man"}
#You'll definitely see both when you do research online, so you need to recognize both. Ruby gained "JSON Hashes" in order to increase its ability to share data with JavaScript (the JS in JSON stands for JavaScript). It's a great idea, but (sorry!) it's a little confusing when you're starting out.

#Most of the time, for keys, Rubyists prefer Symbols (there are performance reasons that we'll cover elsewhere).

#For comparison, here's the same hash written using Strings as the key:

{"name" => "John Henry", "occupation" => "Steel-driving man"}

#Define Hash Values
#Hash values are the bits of data that are returned when we give a Hash a key to use to do a look up. The values in the grocery / prices example are: 2.35, 3.00, and 2.15.

#Keys are the things we look up by, in our grocery example these are the Strings "bread", "milk", and "eggs".

#Hash values don't need to contain values of all the same type. You can have Strings, other scalar data, or even other Arrays or Hashes!

{:item => "banana", :price => 0.89, :quantity => 6, :description => "a delicious fruit"}

#Create a Hash using its implicit ("Hash-Literal") form
#he easiest way to create a Hash is to write it out as we've seen in the examples so far.

new_hash = {
  :created => Time.now,
  :message => "Hello world!"
}

#This is what is referred to as the implicit or "Hash literal" form. When assigning a variable, Ruby will interpret the curly braces on the left hand side as a Hash.

#Once created, we can access this Hash with our new_hash variable:

new_hash = {
  :created => Time.now,
  :message => "Hello world!"
}
new_hash

#Create a Hash with Hash.new
#Alternatively, we can use Hash.new to create a new hash:

second_new_hash = Hash.new
#This is the same as writing:
second_new_hash = {}


#Conclusion
#We're just getting started with hashes, but hopefully, you can already see why they might be useful. With hashes, we can use hash keys as a way of naming individual pieces of data. Including multiple key/value pairs allows us to associate different bits of data, bundling them all up into one object.    