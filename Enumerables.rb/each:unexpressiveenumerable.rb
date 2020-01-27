#Map and reduce are "child". Enumerables from the root Enumerable of them all, .each. 

#Use .each to work with an array 
oppressed_workers = ["Dopey", "Sneezy", "Happy", "Angry", "Doc", "Lemonjello", "Sleepy" ]
oppressed_workers.each do |oppressed_worker|
   puts "#{oppressed_worker} wants to start a union!"
end 

#.each should be used the least 

#EACH least-expressive enumerable 
#we want to avoid each because it is the least expressive. It communicates the least to other programmers about what it is we're trying to do
#Map means: create a new array after transforming each element
#reduce means: distill a value after joining elements together

#But what does each mean? map and reduce has a specific use but EEACH is generic. We don't know what we are really trying to convey
#When we use each to do map things or reduce things we're not documenting what our intention was with regard to the collection. It makes code harder to understand and debug 

#Identify cases for each:
#Best time to use each is when you need to enumerate a collection but aren't transforming data. 

#list of each variants:
#each_cons
each_entry
each_slice
each_with_index
each_with_object (a cousin of reduce)
