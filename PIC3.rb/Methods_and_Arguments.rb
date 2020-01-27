#Many interactions in real world have template behaviour that is applied to every interaction and can change by slight tiny factors. Those particular bits that make the change are called "Arguments."

#Functionality of Arguments:
#When we og in into email etc we see our name. In previous lecture we created a method that return static information. eg:
def greeting
  puts "Hi, Ruby programmer!"
end

greeting 
#This code is static. If we wanted to greet anyone by name we need to add input into the body. The method should maintain the elements that will always be the same, no matter whom we greet, but allow us to change or swap out the name of the person we're greeting. This is considered 'dynamic'.

#Method that accepts Arguments:
#To define the arguments you expect a method to take, you specify parameters in the line that starts with 'def'. If we wanted to write a method called greeting_a_person that accepts an argument of a person's name, we would do it like this:

def greeting_a_person(name) #method name followed by parameter (name)
  puts "Hello #{name}"
end

#The 'name' parameter now holds a name, which is being passed in as an argument its invocation.
#Arguments that are passed into methods create new 'local' variables that can be used within the scope of the method. We call these local variables 'parameters'.
#When you name an argument, you are defining what word you want to use to access that data, just like when you create a variable.
#Arguments follow same rules as local variables: they can be any word that starts with a lowercase letter and they should be as descriptive of the data as possible.

#Now if i were to write greeting_a_person("Maria") it will print: Hello Maria
greeting_a_person("Maria")

#The same pattern works for passing in as many arguments as you want by adding a comma (,) between each argument you want to pass in. For example:

def greeting_programmer(name, language) #first parameter followed by select_second
  puts "Hello, #{name}. We heard you are a great #{language} programmer."
end
greeting_programmer("Maria", "Ruby")
greeting_programmer("Steven", "Elixir")

#The number of arguments, or inputs, an operation expects is called 'arity'. The 'arity' of addition is two: we expect two numbers to add. The 'arity' of greeting is one: we told ruby to expect one argument for its parameter, name.

#A method defined to accept one argument will raise an error if called with more than one argument.EG:

#def greeting(name)
  #puts "hello, #{name}"
  #end
#greeting("Maria", "Ruby") # This will create an error 

#Difference between Arguments and parameters: 
#Parameters appear in method definitions; arguments appear in method calls 

#A method that uses default arguments:
#I would need to write methods that behave a specific way by default, but provide the flexibility to behave differently if we choose. What if I wanted to say hell to someone whose name we didn't know? If we run greeting without passing in an argument?

def greeting(name)
  puts "Hello, #{name}!"
end
#If I wrote greeting an error code will come showing wrong number of arguments

#Using a default argument we can provide a default value for 'name' in the event that no argument is provided. 

def greeting(name = 'neighbour')
  puts "Hello, #{name}!"
end

greeting #If I were to pass in an argument the method will use that argument instead

#Default arguments are often used when we're writing a method with multiple parameters, some required, some optional. Below method makes the 'name' required and the 'language' optional:

def greeting_programmer(name, language = "computer")
  puts "Hello, #{name}. We heard you are a great #{language} programmer."
end

greeting_programmer("Steven", "Ruby")
greeting_programmer("Maria") # not providing the language the method will use the default argument of computer

