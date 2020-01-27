#Methods are used to bundle one or more activities into a single unit. Grouping work under a name that we think is appropriate.

#Abstraction with methods:
#Methods define a new thing that your program can do. While variables in Ruby store date, methods store a new routine or behavior your program can use. Variables are like 'nouns' and methods are like 'verbs', actions.

#Imagine wanting to write 'hello world' five times, could look like:

#puts "hello world"
#then rewrite for 4 more times

#and if you wanted another five, you would write out five. You're repeating string after string.
#When put that message as a variable:

#message = "hello world"
#puts message
#and 9 more times

#We have used a variable to store a message. Now it is easier to change by just changing the message
#We can create a method to contain "this message five times action" we can get rid of repetition.

def say_hello_world_five_times
  message = "Hello World"
  puts message
  puts message
  puts message
  puts message
  puts message
end

say_hello_world_five_times 

#Define DRY:
#DRY stands for "Don't Repeat Yourself", a basic principle of software development aimed at reducing repetition of information. Less code is good: Saves time and effort, easy to maintain and reduces chance of bugs.

#Recognise the Structure of a method:

#when we define a method in ruby we use the 'def' and begins lowercase
#def say_hello_world 
#first line is called the method 'signature' It defines the basic properties of the method including the name of the method.
  #puts "Hello World!"
#end
#everything between def and end is the method body

def greeting #type this first
puts "Hello World" #third: implementation
end #type this second


#All this work defines the method but doesn't run it-yet. We must define it before we can use it

call methods: 
#once you define a method, you can call or execute the method whenever you want by using the method name in your code

def greeting
  puts "Hello World"
end
#by itself when running there is no output. We defined the method but never executed or called it anywhere. By adding the name in a seperate line:

greeting

#Now when you run it theres an output. The word greeting will execute the body of the defined method for each time it was called. Now for finale step we can write a method to "say greeting five times"

def greeting
  puts "Hello World"
end 
 #defined the method of the body
def say_greeting_five_times
  greeting
  greeting
  greeting
  greeting
  greeting
  #we have now created another method to create the individual greetings into one line of code
end
 
say_greeting_five_times
