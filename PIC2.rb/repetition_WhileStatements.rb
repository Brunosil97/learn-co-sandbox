
The final piece of using statements to control the flow of Ruby execution is repetition. While the default sequence requires Ruby to execute top-down, left to right, we've seen that we can skip chunks of code using the selection statement if...else...end. In some ways the reverse of selection is repetition: "Don't move on," we tell Ruby, "do something else until I say it's OK to move on." The most fundamental repetition construct, present in pretty much every programming language, is the while...do...end loop.

Ruby features other repetition statements, but, for the most part, they're simplifications on the while...do...end statement.

Define the Basic while...do...end Structure
The basic while...do...end looks like:

while (condition expression) do
 # stuff to do
end
As long as the condition expression is true (or truthy), the code inside the do...end block will run. Keep in mind, as an expression the condition expression can be quite rich, using &&, ||, (), etc.

Write an Infinite Loop
Given this definition of while...do...end, any truthy expression will make the loop run forever.

while true do
  puts "say this forever..."
end
With output:

say this forever...
say this forever...
say this forever...
say this forever...
say this forever...
...
Remember truthy? Here it is again:

while -1 do # -1 is truthy....
  puts "say this forever..."
end
Likewise, falsey is important as well:

while nil do
  puts "I will never run"
end
Use Control-C to Break an Infinitely Looping Program
If you ever run a program and it starts printing over and over without end or it never seems to finish and you're writing some looping code, you probably made a mistake and your code is stuck in an infinite loop.

Make sure you're in the terminal spot of the In-Browser IDE, and type Control-C. That's an old-school UNIX key-combination that means INTERRUPT. Interrupting a running program will break it out of an infinite loop.

Terminate a while...do...end Loop Naturally
Most loops aren't meant to run infinitely. There's some condition that they cross, that's captured in the condition expression that tells the while...do...end that it's time is over and it's time to return to the default sequence which will resume after the end.

So, somehow we need to create an expression that's true when the while begins (so that the code in the do...end runs), but that eventually becomes false.

Here's a simple example:

count = 0 # A bit of data defined outside the loop
while count < 3 do # A Boolean expression using the bit of data
  puts "I am the #{count}, I love to count!" # Work
  count = count + 1 # A bit of work that moves the bit of data closer to being false
end
This produces:

I am the 0, I love to count!
I am the 1, I love to count!
I am the 2, I love to count!
Let's say we forgot the line count = count + 1 our condition expression would always be true and, therefore, we'd have an infinite loop.

Use Mutating Assignment Operators (+=, -=, *=, /=)
Let's look back at that previous example to notice how we're moving from a true or truthy statement to a false or falsey statement. With each loop, the following expression is evaluated:

count = count + 1
which slowly moves count to a place where it is >= 3, thus ending the loop.

But writing count = count + 1 is a bit long-winded (although very clear, sometimes a few extra keystrokes can save you headaches with debugging if you aren't too clever about saving a few keystrokes). This pattern of making a change to the thing that you want to assign to update or "mutate" is very common. Ruby has a shorthand for this. It's like a contraction in conversation: very few English speakers say "can not," "have not," or "would not" all the time. You're likely to hear them use contractions (from the Latin: "pulling together") like "can't," "haven't," and "wouldn't." So we can link addition and assignment, like above, with:

count += 1 # take the value of count, add one to it and then re-assign that result to count
Unsurprisingly -= does the reverse of +=: it does a reduction of the variable's value and re-assigns it to the variable. Multiplication and division are also supported *= and /-. There's even modulo-assignment with %=, should you need it!

Try out using these to shorten loops.

Terminate a while...do...end Loop With break Statement
Programmers consider it most "expressive" to put the condition expression next to the while. Programmers are used to looking to the right of the while to find out why a loop exited. They understand this "why" by understanding the condition expression. However, we can break out of a loop by using the break statement.

The while should cover the general case including when to repeat and when to finish. A break is for priority or anomalous interruption. For example, most TV or radio stations have a loop of programming that they run every day. But in the case of a special alert bulletin (dramatic weather, emergency, etc.) they can "break" out of their regular loop. The break statement is like this.

LEARNING NOTE: In the code below we're using a statement modifier and an equality-testing (Boolean) expression. All of our lessons are starting to work together!

In the code below, our general intention is to move through the numbers 0 through 9. That's what the while's condition expression communicates. However, there's a little bit of dynamite inside the code. If we just so happen to hit magic_exit_number we break out of the loop.

magic_exit_number = 7
count = 0
while count < 10 do
  break if count == magic_exit_number
  puts "I am the #{count}, I love to count!" # Work
  count = count + 1
end
Or, imagine you had a random number generator between 0 to 9 (which you'll learn to make soon). You could assign that random number to magic_exit_number and your repetition would vary between runs of the same program.

Again, another way of writing this that keeps the condition expression all in one place would be:

magic_exit_number = 7
count = 0
while count < 10 && count != magic_exit_number do
  puts "I am the #{count}, I love to count!" # Work
  count = count + 1
end