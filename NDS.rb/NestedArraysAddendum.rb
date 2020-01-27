#Intro: 
#recognise that coordinate assignments grow nested arrays
#recognise single-coordinate access of arrays return an array 

#recognise that coordinate assignments grow nested arrays:

spice_rack = [
  ["Mace", "Ginger", "Marojam"],          
  ["Paprika", "Fajita Mix", "Coriander"], 
  ["Parsley", "Sage", "Rosemary"]         
]

spice_rack[1][1] = "Extract of pizza" #would update it 
spice_rack[1][100] = "Poodle Dinner" 
spice_rack 

spice_rack = [
  ["Mace", "Ginger", "Marojam"],         
  ["Paprika", "Fajita Mix", "Coriander"],    
  ["Parsley", "Sage", "Rosemary"]            
]
spice_rack[1][10] = "Cucumber Water"
spice_rack #=> [
  ["Mace", "Ginger", "Marojam"],
  ["Paprika", "Fajita Mix", "Coriander", nil, nil, nil, nil, nil, nil, nil, "Cucumber Water"], #trying to add cucumber to [10] fills out with nil 
  ["Parsley", "Sage", "Rosemary"]
]

#We can add at any coordinate pair. If the element you need to add needs the inner array to "grow! in order to accommodate it. Ruby will grow the array and fill in the inbetween values with nil. 

#recognise single-coordinate access of arrays returns an array: 
#This isn't a new fact, but some students forget that the inner array are still arrays. Upon which we can do all the usual stuff we already know how to do. As such you can use shovel (<<) on an inner array: 

spice_rack = [
  ["Mace", "Ginger", "Marojam"],        
  ["Paprika", "Fajita Mix", "Coriander"], 
  ["Parsley", "Sage", "Rosemary"]         
]
spice_rack[2] << "Saffron" #=> ["Parsley", "Sage", "Rosemary", "Saffron"] # this will add it to the end 
spice_rack

#If you want to replace a whole array within the containing array, you can do so by using one coordinate. 
spice_rack = [
  ["Mace", "Ginger", "Marojam"],      
  ["Paprika", "Fajita Mix", "Coriander"], 
  ["Parsley", "Sage", "Rosemary"]         
]
 
spice_rack[0] = ["Posh", "Scary", "Sporty", "Baby", "Ginger"] #this will change the first array to this new one 










