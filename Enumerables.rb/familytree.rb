#Use map to Transform an Array
p [10, 20, 30, 40].map{ |num| num * 2 }

#Use reduce to Reduce an Array to a Value
p [10, 20, 30, 40].reduce(0){ |total, num| total + num } #=> 100
p [10, 20, 30, 40].reduce(100){ |total, num| total + num } # 200

#Use Ruby Documentation to Learn More About Other Variations on map and reduce
#Select / Reject
p [10, 20, 30, 40].select{ |num| num > 25 } #accumulates the elements that make a truthy expression in the block 
p [10, 20, 30, 40].reject{ |num| num > 25 } #accumulate the elements that dont make a truthy expression in the block

#what to memorise:
#all?: Everything "tested" by the block returns truthy
#any?: Did anything "tested" by the block returns truthy
#collect: A synonym for map
#count: Which elements satisfy the block or, without block, how many elements are there?
#detect: Which element satisfies the block first. Does the same thing as find.
#find_all: Which elements satisfy the block?
#find_index: What is the index of the first element to satisfy the block?
#max: What's the highest value?
#max_by: What's the highest value based on some property of the element?
#min: What's the lowest value?
#sort: Put the values in order

