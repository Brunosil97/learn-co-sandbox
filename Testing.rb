#Test 1: 
#Finding Where an Element is Located on an Array
#The first method, find_element_index(array, value_to_find), takes in two parameters, an array of integers and a value to find. This method should return the index of the value that was passed in. If the value is not found, this method should return nil.


def find_element_index(array, value_to_find)
array.length.times do |count|  #I am looping through the amount of elements in the array 
  if array[count] == value_to_find # I am saying if the value_to_find is equal to one of the values being looped
    return count #to return the count when found value which ends the loop 
  end
end 
  nil #nil returns if it doesnt match 
end

ftas = ["bruno", "luis", "cem", "bot"]

def funniest(ftas)
  ftas.length.times do |count|
    if ftas[count] == funny 
      return count 
    end
  end
end 



#Test 2: Finding lowest and highest value 


def find_max_value(array)
  x = array[0] #hypothetical chance that the first number would be the highest valued 
  array.length.times do |index| #going through eveyr piece of the array compared to x 
  if array[index] > x  #and if its greater then thatll be the new x 
  x = array[index]
 end 
end
  x 
end

def find_min_value(array)
  x = array[0] 
  array.length.times do |index| 
  if array[index] < x  # the same but now it is less than
  x = array[index]
 end 
end
  x 
end