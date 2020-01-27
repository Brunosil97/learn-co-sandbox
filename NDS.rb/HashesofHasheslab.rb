#Key Image: Relationship Tree
#To help you when reading the rest of this lesson, keep in mind that a HoH is like a family tree. Every person in a family tree is a, well, person. Every person in a family tree has two chromosomal parents. And those parents are both person instances which means they, in turn have two chromosomal parents...and on...and on....all the way back to the DAWN OF LIFE.

#Thus, we can render any given individual like so:

# Not valid code
{
  name: "",
  mother: # THE SAME TYPE OF THING - something with a name, mother, and father key,
  father: # THE SAME TYPE OF THING - something with a name, mother, and father key
}
#Because of the potential to go infinitely deep, we'll keep our HoHs only one or two generations wide. Programmers in social networking companies call things like our person instances "nodes."

#From Hash to Array of Hashes
#Recall that a Hash is like a table, but in code form. It is a way for your program to store pairs of data as elements in a collection.

#We call names in a Hash that we use to point to data, keys. By providing a Hash name and a key, we can uniquely identify a value.

#Recognize Vocabulary Term: "Hash of Hashes"
#HoH's property of being made up of nodes that have the same structure of each other makes them very popular in programming interviews. Much of the vocabulary used to talk of these "node collections" is described by a mathematical discipline called "graph theory." We're not going to discuss that vocabulary in this lesson. But if you hear "leaf," "node," or "edge," you're starting to approach "graph theory."

#In the age of social networking being able to build "graphs" of "nodes" has become very important. We'll make a mini-social network in our example below.

#Create a HoH
#Let's make a simple family tree:
# Simple Hashes

mother_hash = {
  name: "Debbie Reynolds",
  mother: {},
  father: {}
}
 
father_hash = {
  name: "Eddie Fisher",
  mother: {},
  father: {}
}
 
child = {
  name: "Carrie Fisher",
  mother: mother_hash,
  father: father_hash
} 

#If we don't need to use mother_hash or father_hash, then we don't need to assign them before nesting them in child. We can write a nested HoH using literal formatting:
 
child = {
  :name=>"Carrie Fisher",
  :mother=>{
    :name=>"Debbie Reynolds",
    :mother=>{},
    :father=>{}
  },
  :father=>{
    :name=>"Eddie Fisher",
    :mother=>{},
    :father=>{}
  }
}

#Take a moment to reflect. Can you "see" the tree's nodes? Each entity ("Eddie Fisher", "Debbie Reynolds" and "Carrie Fisher") are the same thing (a person) with another "generation" of Hash data accessible via standard keys. This means that we can "tunnel" through the infinite regress of HoHs to get data.

#We've kept the regress very shallow here (2 generations), but you can imagine a longer family tree could be quite deep indeed!

#Read Scalar Data From a Nested Hashes
#One of the defining features of HoHs is that we use stacked keys to get data out of the complex tree. To read an element from a HoH simply "stack" keys:
 
child[:name] #=> "Carrie Fisher"
child[:mother][:name] #=> "Debbie Reynolds"
child[:mother][:mother][:name] #=> "Maxene Reynolds"

#Through this "stacking" across "generations" we can see that Carrie Fisher's grandmother's name was "Maxene."

#PRO TIP: When building HoHs, it's wise to ensure you have all the data uniform. We should ensure that we have the mother / father data for "Eddie Fisher". To show "end of our knowledge" we've used an empty Hash.

#Modify Scalar Data In an Hash of Hashes
#The same technique of using coordinates applies both to reading and modification. If you can "target" an element you can read it or update it.

child[:mother][:father] = "Raymond Reynolds"
child 
child[:mother][:father] #=> "Raymond Reynolds"

#You can also replace inner Hashes with new Hashes:

child[:father][:mother] = {name: "Gitte Winokur", mother: {}, father: {}}
child 
child[:father][:mother] 
#While AoAs or AoHs are frequently described using ONLY literal syntax, with a HoH, it might be more readable to define the nodes in single-instance variables and then use the short variables to build the HoH.

#HoH in the Wild
#As a closing point, it's not a rule that all "nodes" in a HoH are all the same. It's often true, but sometimes not. In the lab, we're going to provide a simple HoH which breaks the tendency of all nodes to be alike.