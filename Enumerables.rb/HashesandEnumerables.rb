#Intro:
#Hashes also have all the same enumerables - although some are less useful
#With a hash, we will not use map. Instead, we'll use reduce
#A new hash to populate as its argument. Inside reduces block we'll add to that new - hash argument (the first block parameter, traditionally called memo), returning the memo at the end of each block 

#DONT FORGET TO RETURN THE MEMO AT THE END 

#Helpful to work with the Hash, the each and the hash - relevant each_pair methods can help us get a handle on the situation.

bands = {
  joy_divison: ["ian", "bernard", "peter", "stephen"],
  the_smiths: ["johnny", "andy", "morrissey", "mike"],
  the_cramps: ["lux", "ivy", "nick"],
  blondie: ["debbie", "chris", "clem", "jimmy", "nigel"],
  talking_heads: ["david", "tina", "chris", "jerry"]
}

#Use each and each_pair to print out a hash:

#bands.each { |pair| p pair } #this prints out the hash 
#The block has an array with two arguments: the key and the value 'yeilded' to it 
#bands.each_pair { |band| p band } #more expressive 

#Use reduce to create a transformed hash:
#lets put all our bands' members names in order and print the original and sorted Hashes.

bands.reduce ({}) do |memo, pair|
 p memo
 p pair 
 memo 
end 

#Our "accumulating" Hash called memo is the thing we need to update. In each call to our block we receive a pair as a two element array (the band and the names). How do we split that into the key and the value? 

bands.reduce ({}) do |memo, (key, value)|
  p memo #first block paremeter
  p key #second block
  p value #second block 
  memo #return value of block, becomes memo in next go 
end 
prints the band as key and the names as value 

#Now we can crack open the array that was in the pair paremeter and put element 0 in key and element 1 in value. Lets sort the band in alphabetical order: 

sorted_member_list = bands.reduce ({}) do |memo, (key, value)|
  memo[key] = value.sort #value.sort changes it 
  memo 
end 
p sorted_member_list

#Use reduce to resolve a value from a hash: 
#We can also use reduce to accumulate to a single value. eg find most alphabetical name in entire hash 

firstmost_name = bands.reduce(nil) do |memo, (key, value)|
  #on fist pass, we dont have a name so just grab first one 
  memo = value[0] if !memo 
  #sort that array of names 
  sorted_names = value.sort 
  #if string comparison says the sorted name is earlier than the memo it becomes the new memo 
  memo = sorted_names[0] if sorted_names[0] <= memo 
  memo 
end 
p firstmost_name
 
