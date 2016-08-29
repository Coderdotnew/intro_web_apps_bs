# variables
Let's think about algebra really quick. We use variables in algebra problems to assign a value to a letter, usually x, that we don't know yet. Then we solve for x. The cool thing is, x can be any number and changes all the time--it's value can vary. Think of a variable as a bucket that can hold any data inside of it and eventually be poured out and refilled with a different value!   

![1](http://i.imgur.com/Z1EHF7S.gif)   
(Even though we all obviously prefer the bucket be full of sloths, Ruby data will do for now...)    

In Ruby, we define the variables we use. A variable in Ruby doesn't just have to be a number, but can be any of the four data types (remember those?) or it can even be assigned to the return value of a method!  
Let's take a look at the syntax  
```ruby
first_name = "Barack"
last_name = "Obama"

puts first_name + " " + last_name
# Barack Obama
```
- There are two variables *assigned* here: `first_name` and `last_name`
- I know this because a variable is defined using `=` sign.
- Similar to a method, a variable can only begin with a lower case letter or an underscore (I still separate words using underscores in variables, just like method names).
- Each of the variables were assigned to a string and Ruby stored this data.
- This data was then printed to the screen when we prompted Ruby to print it using `puts` but rather than typing out the string again, we rather used the variable names (and a little **concatenation**... notice the space in the middle)!

# scope
An important concept for methods and variables is called *scope*.  
![2](http://i.imgur.com/mwHyfGj.jpg?1)  
- Think of a para*scope* that a submarine uses. When underwater, someone looks through a parascope and can only see a limited field of vision due to the scope size.  
- This is similar to *scope* in programming. Ruby can only see some of the code, depending on where it is written.  

Let's look at an example with a variable and a method:
```ruby
name = "Deadpool"
def say_hello
    puts "Hello, my name is " + name + "."
end

say_hello
=> example.rb:3:in `say_hello': undefined local variable or method `name' for main:Object (NameError)
  from example.rb:7:in `<main>'
```
- When we run this program, we get an error... 
- The error states that in line 3 there is an unidentified local variable called `name`
- The reason this is undefined is because of **scope**
- Think of each method as having an opening gate, `def`, and a closing gate `end`. Everything inside these gates can only be seen and interpreted within this single method. Ruby cannot see outside of these gates, so in this case, `name = "Deadpool"` is outside of the method scope which Ruby cannot see..
- There is an easy fix though
```ruby
def say_hello
    name = "Deadpool"
    puts "Hello, my name is " + name + "."
end

say_hello
# Hello, my name is Deadpool.
```
- It worked!
- We need to be careful, though. Ruby reads top to bottom so if we rewrote out method like this...
```ruby
def say_hello
    puts "Hello, my name is " + name + "."
    name = "Deadpool"
end
```
- We would get the same error because `name` was not yet defined when we tried to call on it
- I hope you are starting to see how important it is to critically think about method and program design to ensure that all the code works when it runs

# string_interpolation
Let's revisit our previous method.
```ruby
def say_hello
    name = "Deadpool"
    puts "Hello, my name is " + name + "."
end
```
- We were able to *concatenate* our strings together (`name` is storing a string). But it can get rather annoying to have to keep breaking up our strings. If only there was a way to add our variables directly into our strings...
- BUT WAIT! We have **string interpolation** for that! Interpolate means to insert something, typically words (or numbers) in text (aka a string!)
- The syntax we are going to use is kind of strange: #{variable_name_goes_here}
- Using this syntax, we can insert a variable directly into a string without breaking up the string and needing to concatenate. 
```ruby
def say_hello
    name = "Deadpool"
    puts "Hello, my name is #{name}."
end
```
- Simple as that! As long as you remember the syntax, string interpolation is easy peasy

# gets.chomp
For some programs, you may want to *get* data from a user running your program. For example you may want them to give you
- name
- age
- username
- favorite color  

This can be tough to program though because there's NO WAY you can predict what every single user using your program will input.
- That's why we have the `gets.chomp` method
- `gets` is a way for Ruby to collect data from a user and `.chomp` is a built in method that *chomps* away the newline character. Let's check it out
```ruby
super_power = gets
# when this runs, the user will be prompted to type into the command line, I'll type "fly"
super_power
=> "fly\n"

super_power = gets.chomp
# when this runs, the user will be prompted to type into the command line, I'll type "fly"
super_power
=> "fly"
```
- This might seem a bit weird at first. When you run a Ruby program with `gets` included, the command line will wait for you to input data until it continues running.
- In the first example, the `gets` did not include the `.chomp` method so there was a newline character added (`\n`)
- In the second, the `gets` did include the `.chomp` so the newline character was chomped off at the end
- Let's see how this plays out in a real scenario...
```ruby
def greeting
  puts "What's your name?"
  name = gets
  # user will input the name, Deadpool here when prompted
  puts "Nice to meet you, #{name}!"
end

greeting
#=> Nice to meet you, Deadpool
#=> !
```
- Notice the `!` was sent the the second line. This is because we did not use `.chomp` so the program read the output as: `Nice to meet you Deadpool\n!` 
- That newline character tells Ruby to start a new line, thus sending the `!` to the next line
- Now with `.chomp`
```ruby
def greeting
  puts "What's your name?"
  name = gets.chomp
  # user will input the name, Deadpool here when prompted
  puts "Nice to meet you, #{name}!"
end

greeting
# Nice to meet you, Deadpool!
```
- All on the same line! (p.s. It is safe to assume you will use `.chomp` with `gets` pretty much every time)  
![3](http://i.imgur.com/jmjhSVN.gif)  

# variable_reassignment
Variables can be assigned and then reassigned, and then reassigned, and then reassigned as many times as you please. 
- However, when Ruby reads top to bottom, it will only remember the most recent variable assignment in your program so it's important to use descriptive and unique variable names
```ruby
age = 10
age = 15
age = 20

#what do you think age will be when we call it?
puts age
# 20
```
- Yup, Ruby stored each of those variables, but every time it was reassigned a new value, Ruby forgot the previous value. 

# code_along
Create a method, `my_favorites` with nothing inside of it
```ruby
def my_favorites

end
```
- Pay attention to spacing as it can play a big role in your program
- Inside the method, create a variable, `city` and assigned it to `gets.chomp`
```ruby
def my_favorites
    city = gets.chomp
end
```
- On the next line, create a variable, `hobby` and assigned it to `gets.chomp`
```ruby
def my_favorites
    city = gets.chomp
    hobby = gets.chomp
end
```
- On the next line, create a variable, school_subject and assign it to `gets.chomp`
```ruby
def my_favorites
    city = gets.chomp
    hobby = gets.chomp
    school_subject = gets.chomp
end
```
- On the next line, print a string using `puts` that interpolates each of the variables defined and forms a complete sentence (your sentence might be different than mine and that's okay, as long as it makes sense)
```ruby
def my_favorites
    city = gets.chomp
    hobby = gets.chomp
    school_subject = gets.chomp
    puts "My favorite city is #{city}. My favorite hobby is #{hobby}. My favorite school subject is #{school_subject}."
end
```
- Lastly, call the method after the `end` keyword
```ruby
def my_favorites
    city = gets.chomp
    hobby = gets.chomp
    school_subject = gets.chomp
    puts "My favorite city is #{city}. My favorite hobby is #{hobby}. My favorite school subject is #{school_subject}."
end

my_favorites
```
- When we run this program, our command line will wait for us to type in our favorite city, then favorite hobby, then favorite school_subject then will print our string to the screen!


## Challenges    
##### [All About You](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/02_variables/code/01_all_about_you)  
##### [Scope Errors](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/02_variables/code/02_scope_errors)  
##### [Sci-Fi Bios](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/02_variables/code/03_sci_fi_bios)   

## Navigation  
##### Next lesson: [Method Arguments](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/03_method_arguments)   
##### Previous lesson: [Intro to Methods](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/01_intro_to_methods)   
##### Back to: [Methods](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class) 
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)  

