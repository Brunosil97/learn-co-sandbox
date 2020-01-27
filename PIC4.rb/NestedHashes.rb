#Intro:
#So far, we've seen hashes that store values in associated keys. In the hashes we've built up until now, each key points to a single value. Hashes are very useful, howeever, because they cam be nested within each other. A key in a hash can point to a value that is also a collection of objects. i.e an array or even another hash. This is also sometimes referred to as a multidimensional hash. 

#We strive to write code that models the real world. Whether you're creating a simple command line game or an app to help hospitals manage patient data, our code is designed to do a real job, like run a game or communicate critical information. 

#Where will you find nested hashes? 

#Nested hashes are vvery common wway tto store and operate on complex associated data in a program. You are likely to encounter them any time you find yourself working with a large collection of information. In particular, you will encounter these data structures when working with data you will pull from APIs.
#APIs stand for "Application Programming Interface" and here refers to the way in which organisations, companies, and governments will expose their data to the public for use. 

#Nested hashes model real-world data:
#List of instructors can be stored in an array like this:

instructors = ["Ian", "Johan", "Alex"]
#What happens when we expand our data collection to include the students as well? We could create another array 
students = ["Andrew", "Howard", "Terrance", "Daniel", "Rachel", "Natalie"]

#But both of these groups are part of a larger group, their school. We'd like to group them together into a collection that contains both. But we want to do this in a way that keeps a "label" describing each "sub-collections" focus. 

#Our first nested hash:
#With a nested hash we can store complex collections of data. In other words we can store data that is associated with other data via categories and subcategories. Both the 'students' and 'instructors' array should be associated with the same school. So we can create a hash, school, that contains keys to denote the instructors and students categories. We can point these keys to the array that contains our instructors and students:

school = {   #school is our created hash 
  instructors: ["Ian", "Johann", "Alex"], #instructors and students are keys 
  students: ["Andrew", "Howard", "Terrance", "Daniel", "Rachel", "Natalie"] #array as values 
}

#A note on mixing our collection types:
#Arrays and hashes can store any type of data. In other words, the individual index items of an array can be strings, integers, or even other arrays and hashes. The same is true of hashes. The value that hash key point to may be strings, integers, and even arrays or hashes.

#Nesting an array within a hash:
#Each key points to an array of strings. The 'school' hash has a key of :instructors. The value of that key is an array of instructors. In order to access that array we can use the [] method. 

instructors = school[:instructors] # prints out the instructors 

#here we set a variable, instructors, equal to the return value of calling school[:instructors] 
#Now to operate on that collection of instructors, we can simply operate on our instructors array.
#What if I wanted to grab just the first name in the instructors array? We use the same methods for accessing array index items that we've been using all along:

instructors[0] #will print "Ian" 
#we could also use:
school[:instructors][0] #will print "Ian" 

#Nesting a hash within a hash:
#Imagine we're putting together information on various TV show characters, each including information about a particular TV show character. An individual hash for each character might look something like this: 

homer = {name: "Homer Simpson", occupation: "Nuclear Safety Inspector", hobbies: ["Watching TV", "Eating donuts"]}
jon = {name: "Jon Snow", occupation: "King in the North", hobbies: ["Fighting white walkers", "Knowing nothing"]}
fred = {name: "Mr. Rogers", occupation: "Neighbor", hobbies: ["Making children feel loved and appreciated", "Singing songs"]}

#While each has is about a different character, they are all part of a larger collection. We could put them in an array within [] 
#This seems weird though. There isn't a particular order we need to maintain. Having everything in an array makes it more difficult to find a particular hash, since you will need toknow the exact index of that hash to access it. It makes more sense to contain these hashes within another hash:

tv_show_characters = {
  "Homer Simpson" => {name: "Homer Simpson", occupation: "Nuclear Safety Inspector", hobbies: ["Watching TV", "Eating Donuts"]},
  "Jon Snow" => {name: "Jon Snow", occupation: "King in the North", hobbies: ["Fighting white walkers", "Knowing nothing"]},
  "Mr. Rogers" => {name: "Mr. Rogers", occupation: "Neighbors", hobbies: ["Making children feel loved and appriciated", "Singing Songs"]}
}

#Here we've used character names as keys to make it more convenient to access our hashes even though this data is already stored in the hashes themselves. With this hash, we can directly look up a particular character's information just by using their name:

p tv_show_characters["Homer Simpson"]
p tv_show_characters["Jon Snow"][:occupation]
p tv_show_characters["Mr. Rogers"][:hobbies][1] #when looking up we change the key: to :key 

#Nested hashes can get pretty complicated. 







