def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  puts base
  yield(base) #using yeild executes the block passed into this method 
  
end
make_sandwich("chicken", "a sense of malaise") do |innards| #block
  puts "making some tasty stuff..."
end 

#Pass a Block to a Method
#We pass a block to a method by including either a {} or a do...end block after our call to the method.

#method_using_block { puts "hi" }
 # Is the same as...
#method_using_block do
  #puts "hi"
#end
#can define block paremeters by placing their name in between two pipes |  | 

#Pass Data Between Methods and Blocks: 

def ftas_names(element1, element2)
  core_friends = "All of #{element1} except for #{element2}"
  puts core_friends
  yield(core_friends)
end 
ftas_names("us", "charlie") { |members| "#{members} are straight" } 
  
def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end
 
# Wheat, sure!
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b} on wheat" }



