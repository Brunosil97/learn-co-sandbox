#intro 
#while we're not able to read hash values using keys, currently when we create a hash, we're stuck with whatever data was entered in when the hash was create:

person = {
  name: "Sam",
  age: 31
}
person[:age] #returns 31 

#Update hash values:
#Updating hash values is very similar to looking them up. For updating, we use the bracket-equals method:

person = {
  name: "Sam",
  age: 31
}
person[:age]
person[:age] = 32

#If we look back at the entire hash, we see that the value associated with the :age key has changed:

p person #it will show that the age has chnaged to 32 

#using the brack-equals method, we can mutate any value stored inside a hash. All we need to know is the associated key.

#Add keys and values to a hash:
#We saw that using the bracket method and passing in an invalid key returns nil:

person[:hometown]  #would return nil 

#so what happens when we use an invalid key with the bracket-equals method? When ruby discovers that the key is not present on the hash in question, ruby will simply create a key/value pair on the hash:

person = {
  name: "Sam",
  age: 31
}
# No :hometown key found
person[:hometown]
#=> nil
# Because :hometown was not present, Ruby creates the key value pair here
person[:hometown] = "Brooklyn, NY"
#=> "Brooklyn, NY"
# Now, the :hometown key refers to "Brooklyn, NY" when used in the brack method
person[:hometown]
#=> "Brooklyn, NY"
# Our original hash is also mutated
p person #=> {:name=>"Sam", :age=>31, :hometown=>"Brooklyn, NY"}

#The general syntax for adding a new value to a hash is :hash[:new_key] = "New Value", :new_key is the literal new key we added to the hash and we assigned the :new_key a value of "New Value". 

#Find or create a hash value:
#One common use case of this is having to either find a value or create that value. First an example hash: 

  shipping_manifest = {
  "whale bone corset" => 5,
  "porcelain vase" => 2,
  "oil painting" => 3,
  "silverware" => 34,
  "loom" => 1
}
#Imagine the above hash is a manifest for products being shipped, with their values representing quantity, and my job is to keep a tally as more products are counted. A fourth oil painting shows up and we need to add it to the list. Easy enough. The hash is small enough that we could just write the following and be done. 

p shipping_manifest["oil painting"] = 4 

#three paintings previously accounted for, pus one new painting. However, we can be a bit more abstract than that. Is there a way we can quickly increment an integer without having to explicity know the previous value? We could do:

p shipping_manifest["oil painting"] = shipping_manifest["oil painting"] + 1

#Now shipping_manifest["oil painting"] will be assigned to whatever it was previously, plus one. There's an even shorter way to express this: 

p shipping_manifest["oil painting"] += 1

#What happens when a new item is introduced, say we need to ship one top hat, which isn't present:

# shipping_manifest["top hat"] += 1 
#You will get an error. Ruby cant find it and because of this it returns nil. Ruby doesnt like to combine data types when it comes to operators.
#We can prevent this error from occurring by setting up a conditional and using the bracket method to first look up a key before trying to change it:

if shipping_manifest["top hat"]
  shipping_manifest["top hat"] += 1
else
  puts "Key not found!"
end
#Since "top hat" isn't a key in shipping_manifest, the above conditional will puts "Key not found!" to the terminal rather than cause an error. This still doesn't fully solve the problem. Sure we can't update something that isn't there, but we still want to add a top hat to our manifiest. 
#Can handle adding a key value pair here: 

if shipping_manifest["top hat"] # if it is truthy 
  shipping_manifest["top hat"] += 1 # increment by 1 if truthy 
else
  shipping_manifest["top hat"] = 1 #if not assign it to be equal to one 
end
p shipping_manifest
#running the above conditional the "top hat" key will be added and set to 1. Running it again will update "top hat" to 2. 

#With the ability to update values and create entirely new key/value pairs, we've tackled the core concepts behind ruby hashes. 


