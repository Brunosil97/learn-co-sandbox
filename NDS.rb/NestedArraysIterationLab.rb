#Intro: 
#Arrays of arrays is our first milestone in learning to work with nested data. 
#1 Displaying the nested structure 
#2 Transforming the nested structure into a new structure (a collection)
#3 Transforming the nested structure into a result (a single thing usually a number)

#Display the cells in an array of arrays:
#It's not often we say this but following bit of code is worth memorising. If you want to learn to speak any language it's good to learn the grammer, grow your vocabulary, and speak with naitve speakers as much as possible 

#Assuming the following AoA: 

spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
  ]
  
  #Display it like: 
 spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
  ]
  row_index = 0 
  while row_index < spice_rack.count do 
    element_index = 0 
    while element_index <
  spice_rack[row_index].count do 
    puts spice_rack[row_index][element_index]
    element_index += 1 
  end 
  row_index += 1 
end 
#This will print out everything in spice_rack array in its order 

#Traverse Array of Arrays to produce a new nested data structure:
#The same formular that we used above can be adapted for doing work orther than puts. Lets say we wanted to gather all the elements that start with P. 
spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]
 outer_results = []
 row_index = 0 
 while row_index < spice_rack.count do 
   element_index = 0 
   inner_results = [] 
   while element_index < spice_rack[row_index].count do 
     if spice_rack[row_index][element_index][0] == "P" #is equal to 
       inner_results << spice_rack[row_index][element_index] #shovelling 
     end
     element_index += 1 #looping through 
   end 
   outer_results << inner_results #another shovel 
   row_index += 1 
 end 
 p outer_results 

#Traverse Array of Arrays to produce a single value: 
#Another variant of traversing nested array is traversing the matrix and accumulating all the values. Let's imagine that someone created a grid representing a gussing game. In each cell of the grid the games makers have put some amount of cash. let's sum up all the possible values to determine how much money is in the grid. 

guessing_game_grid = [
  [1, 2, 1, 7, 3],
  [2, 100, 15, 4, 18],
  [15, 16, 99, 1, 2, 11]
  ]
total = 0 
row_index = 0 
while row_index < guessing_game_grid.count do 
  element_index = 0 
  while element_index < guessing_game_grid[row_index].count do 
    total += guessing_game_grid[row_index][element_index]
    element_index += 1 
  end 
  row_index += 1 
end 
p total 

#This is known as reduction because you're going to reduce a nested data structure to a single value. 









