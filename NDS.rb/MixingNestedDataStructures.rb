#Intro:

#By using these basic nested data structures, we've gained a foundation for modelimg many things in the world. 
#WE CAN NEST NESTED DATA STRUCTURES IN OTHER NESTED DATA STRUCTURES
#Your array of hashes can have keys that point to arrays of arrays. Or your nested node structure of hashes of hashes can have a key that points to an array of hashes. 

#Vending machine:
#'Spinner' . It holds multiple snack packages in it, when you've paid, the spinner spins and pushes the front most snack off of the corkscrew spinner the snack then falls to the box.
#On each snacks packaging a price and name. :price :name 

#Identify that nested structures can be mixed
#In order to model a real grid-based vending machine (C20 is a candy bar off of a spinner of gum packages, B50 is a drink off of a spinner of drinks), we think the right NDS is: 

#Array of Array
  # of Array 
  # of Hashes 
  # with keys :name and :price where 
  # :name points to a string 
   #:price points to an Integer price 
   
   #Discussion of how to model an NDS is what developers spend a great number of their meetings and pair programming sessions discussing! 
   
   #Explaing the entire vending machine from the top doqn:
   #We have a coordinate grid. That's an AoA 
   #In each coordinate, there's a "spinner" with multiple snacks
   #Each snack has two important facts associated with it, a :name string and a :price integer 
   
   #Explaing the entire vending machine from bottom up:
   #A price of the snack represented as an 'Integer' 
   #Each snack has a name stored as a 'string'
   #Each snack collects those facts in a 'hash' that has keys :name and :price 
   #Multiple snacks are stored in an indexed collection, an array, that represents the "spinner" device. Each "spinner" is accesibly by a coordinate within an AoA grid.
   #the vending machine is the super container AoA 
   
   #A version in code:
   vending_machine = [[[{:name=>"Vanilla Cookies", :price=>3},
   {:name=>"Pistachio Cookies", :price=>3},
   {:name=>"Chocolate Cookies", :price=>3},
   {:name=>"Chocolate Chip Cookies", :price=>3}],
  [{:name=>"Tooth-Melters", :price=>12},
   {:name=>"Tooth-Destroyers", :price=>12},
   {:name=>"Enamel Eaters", :price=>12},
   {:name=>"Dentist's Nightmare", :price=>20}],
  [{:name=>"Gummy Sour Apple", :price=>3},
   {:name=>"Gummy Apple", :price=>5},
   {:name=>"Gummy Moldy Apple", :price=>1}]],
 [[{:name=>"Grape Drink", :price=>1},
   {:name=>"Orange Drink", :price=>1},
   {:name=>"Pineapple Drink", :price=>1}],
  [{:name=>"Mints", :price=>13},
   {:name=>"Curiously Toxic Mints", :price=>1000},
   {:name=>"US Mints", :price=>99}]]]
   
   #get a spinner 
    vending_machine[0][0] 
   #get spinner first nack
   p vending_machine[1][1][2] #first is index of spinner. 2) index of array 3) index of snack 
   #get spinner first snack price value 
    vending_machine[1][1][0][:price]
   #work with a single snack 
   test_snack = vending_machine[0][1][0]
    test_snack[:price]
    test_snack[:name]
    
   
   
   
   
   
   
   
   