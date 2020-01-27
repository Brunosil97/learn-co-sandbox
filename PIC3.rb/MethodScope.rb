#Goals: recognise what scope is, recognise global and local scope, recognise scope overlap:

#Scopes: 'scopes' define where in a program a variable is accessible or "visible". A variable is a name that ruby associates with data. For example, dog = "poodle" or age = 32. Variables hold information we want to save and reuse. But sometimes you can't access variables. They're said to be "invisible" or "inacessable" outside of a certain "scope". We need to understand why variables are "scoped". Understanding this concept will help developers avoid errors and debug extremely sneaky bugs. 

#Recognise what Scope is:
#Lets say you order a meal in a restaurant and it took some time. You ask where is your meal. The waiter knows that the data associated with the variable your_order should be recorded in their notepad or should be findable in the kitchen. The idea of your_order is like a variable and has meaning in the context or "scope" of this particular restaurant and this particular time. If you walked to another store and asked for your_order the contect of the variable doesnt make sense. Restaurant orders are "scoped" or "exist in a context of" time and space.

#Global scope: 
#when we assign a variable, outside of a method, we're defining it in a 'gobal' scope. So called GLOBAL VARIABLES in ruby are accessible from anywhere in the program. Even inside a method we can asccess variables in that scope. 
#Gloval variables names start with a dollar sign ($). For example: $global_variable
#Global variables make programs unpredictable. It is harder to track where changes are happening. If we created a too broadly scoped or too broadly named variable like $data and change it through the operations of multiple methods, it's really hard to debug what's going on. If running big programs and are having naming issues. If the names arn't unique enough, there will be conflicts, and you'll have to keep track of all of those global variables. 
#For example: A keycard in a hotel: every person that rented a room should have a keycard, the staff cleaning that work on the floors to which they're assigned should have keycars and the managers and emergency services staff should be the ONLY people with a "global access" keycard.

#Recognise a local Scope:
#A local variable is "local" to its contining methods scope. it is only visible in the scope. In Ruby local variable declared in a method cannot be accessed outside of that method.

#def my_ruby_method
 # puts local_variable
#end

#When ruby encounters a word like local_variable then it will check if, within the current scope, it knows a local variable with the same name. If so, it will use the value that is associated to this variable. If there's no local variable with this name, then it will look for a method. If there's also no method with this name, ruby will then raise the error message.

#Here we will properly define local_variable and use it: 

#def _ruby_method 
  #local_variable = 'Hello World!'
  #puts local_variable #If i ran code without 'puts', my_ruby_method the variable would exist in the methods local scope. 
#end
#my_ruby_method

#Recognise Scopes Overlap:
#Everytime we create a new method, you create a new scope. It's like Ruby is opening a gate for you and taking you to an entirely different context with entirely different variables.
#When in an amusement park, you likely experienced coming into a what felt like a "whole new world" each time you enter a new section of the park. World of Harry Potter is different to The simspons with completely different rides and attractions.
#However, scopes overlap. When we go into different sections of the park we dont stop being a human. In any location anyone working there still knows we're human. Scopes, or contexts, "Overlap". Something that is defined in a "higher" scope is visible in a "lower" scope. A method is defined inside of a class. Any method is considered a lower scope than the class, like the park with many sections. 
#In code:

$species = "human"

def visit_universal(name)
  visit_wizarding_world(name)
  visit_springfield(name)
end

def visit_wizarding_world(name)
  simple_name = "Hogwart's"
  puts "#{name}, a #{$species}, visits #{simple_name}"
end

def visit_springfield(name)
  simple_name = "the home of 'The Simpsons'" 
  puts "#{name}, a #{$species}, visits #{simple_name}"
end

visit_universal("Bruno")

#The variable $human, a globally-scoped variable, "casts its shadow" into all the local scopes created by method definitions. But the locally-scoped variables information cannot be gotten outside of those variables defining context.
#Local context, only that method will know about those variables
#In the global context, as the name implies, the variables are accessible to the whole application. 




