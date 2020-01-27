#Intro: 
#Most of the syntax works exactly the same between arrays of arrays to arrays of hashes. 

#From hash to array of hashes: 
#We call names in a hash that we use to point to data, keys. By providing a hash name and a key we can uniquely identify a value 
#Multiple hashes inside of an array would mean you could find the zeroth, first, second element of that array  and get back a little dictionary. You coult then ask that dictionary for the :family_name fields content and get back smith or Dave 

#Recognise vocabulary term: "Array of hashes":
#nested hashes have been commomn data structures since at least ancient egypt.
#AoH: Array of Hashes
#field: The key value pair of a hash 

#create an AoH:

director_1 = {
  name: "Bruno Silva",
  favourite_movie: "Pulp Fiction"
}
director_2 = {
  name: "Iman", 
  favourite_movie: "Avengers"
}

film_fest = [director_1, director_2]

#If we dont need to use director_1 and 2 then we dont need to assign them before nesting them in. We can write a nested AoH using literal formatting: 

film_fest [
  {:name => "Bruno Silva", :favourite_movie => "Pulp Fiction"},
  {:name => "Iman", :favourite_movie => "Avengers"}
  ]
  
  #Read scalar data from a nested array:
  #To read an element from a nested array we simply provide the coordinates 
  
  directors = [
  {:name=>"Ida Lupino", :favorite_movie=>"The Hitch-Hiker"},
  {:name=>"Orson Welles", :favorite_movie=>"Citizen Kane"},
  {:name=>"Andrej Tarkovsky", :favorite_movie=>"Solaris"}
]

directors[0] #will print out the first array 
directors[0][:name] #will just print the name of first array 

#Modify scalar data in an array of arrays:
#If you can target an element you can read it and update it

directors[0][:name] = "John Ford"
directors[0][:favorite_movie] = "Movie"
directors #this will print the updated list 

#You can also replace inner hashes with new hashes: 
directors[1] = {name: "Bruno Silva", favorite_movie: "Pulp Fiction"}
directors 
 







