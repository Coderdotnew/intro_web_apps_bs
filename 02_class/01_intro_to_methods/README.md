# intro_to_methods
Let's jump into one of Ruby's most powerful functionalities...**methods**!   

![1](http://i.imgur.com/1boEBHA.gif)  

# methods  
You might be wondering why there's an ice cream factory above. This is because we can think of a Ruby program as a factory. In an ice cream factory, there are many different actions that have to occur: the ingredients have to be added, the chocolate cookies have to be cooked, the ice cream has to be made, the ice cream has to be inserted between the two chocolate cookies, and then the sandwich has to be wrapped.  

If a program is a factory, then each method is part of the factory, performing a specific duty.
  
In Ruby, a method is a small, specific set of instructions that performs a specific funtion, usually within a larger program. Let's take a look at the basic structure of a method...  

- Ruby has a few built-in methods, such as `.to_i`, `.to_s`, and `.even?`  
- As programmers, we are going to want to create our own custom logic and here's how:  
- To make a custom method, write `def` (short for define), followed by a space and the name you want to call the method. Remember, Ruby needs specific instructions and needs to be told when the method is finished, and needs the keyword `end` at the end of your method  

```ruby
# method structure
def method_name
    # your code here
end
```  
A method name can *only* begin with: 
- lower case letters (i.e. `name`, `whats_your_name`, `greeting`, etc.)  
- underscore (i.e. `_hello`, `_name`, etc.)   

Personally, I stick with lower case letters to begin my method and use underscore if my method has multiple words to be descriptive  
Let's check out a method   

```ruby
def hello_world
    puts "Hello, World!"
end
```
When I run this program nothing happens... or does it? You'll notice there are no errors but also no return values  
To make a method run, you must **call** the method. To call a method, you simple write the name of the method below it to tell Ruby you will be using it when you run the Ruby file.
```ruby
def greeting
    puts "Hello! How are you?"
end
greeting
# Hello! How are you?
#=> nil
```  
- In this example, I called on the method, `greeting`. `Hello! How are you?` was printed to the screen because `puts` was used. 
- If you recall, when we instruct Ruby to print something to the screen using `print` or `puts`, it removes the quotes from the string because this is for the programmer to see, and we can read just fine without strings.   
- My return value was `nil`. When using `puts`, Ruby simply spits this back at us but doesn't really have anything to process.  

You might already be asking yourself, "Why do we even need methods?" Well, there are a few reasons.  
- We write Ruby programs to be executed many times so our goal is to write specific functions within that program that can be used over and over again without the programmer (you) having to re-code it everytime.  
- For example, think about your procedure for packing up at the end of a school day. You write down your homework, pack up your backpack, wait for the bell, stand up, walk out of the door, go home. Imagine having to write these instructions every single time.  
- In this case we might build a method, `go_home`  
```ruby
def go_home
    puts "Write down homework"
    puts "Pack up backpack"
    puts "Wait for the bell"
    puts "Stand up"
    puts "Walk out of the door"
    puts "go home"
end
```  
Anytime I call this method, it will display this set of instructions for a user to see   

Some common methods you might run into on various websites might include...   

1. `log_in` method for any social media site  
2. `check_password` method for entering your password to make sure it really is you  
3. `add_friend` method  
4. `send_email` method  

There are hundreds of methods you run into on any given day when using your phones and computers that include specific instructions for a program...  
  
![2](http://i.imgur.com/zurszYV.png)   
Be sure your method instructions are more clear than IKEA furniture instructions.

# code_along 
In this code along, let's check out how to call methods inside other methods   

- Define a method called `morning` that prints 3 activities you perform when you wake up.
```ruby
def morning
    puts "Brush teeth"
    puts "Eat breakfast"
    puts "Drive to school"
end
```
- Define a method called `school` that prints 3 activities you perform at school.
```ruby
def school
    puts "Finish math homework"
    puts "Eat lunch"
    puts "Play lacrosse"
end
```
- Define a method called `after_school` that prints 3 activities you perform after school.
```ruby
def after_school
    puts "Practice coding"
    puts "Help cook dinner"
    puts "Watch Netflix"
end
```
- Now we are going to make a method that will call on each of these. Define this method as `typical_day`. Hopefully you already have an idea of what we are going to do inside this method...  
```ruby
def typical_day
    morning
    school
    after_school
end
typical_day 
```
- Notice the method is explicilty **called** at the end of the program.  
- Take note that it is possible to call on methods within other methods as we did in `typical_day`. 

# rspec_tutorial
Take a few minutes to read through the **[Rspec and Test Driven Development Tutorial](https://github.com/Coderdotnew/rspec)**.


## Challenges  
##### [RSpec Intro](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/01_intro_to_methods/code/01_rspec_intro)  
##### [Greetings Earthlings](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/01_intro_to_methods/code/02_greetings_earthlings)  
##### [Roadtrip](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/01_intro_to_methods/code/03_roadtrip)  

## Navigation  
##### Next lesson: [Variables](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/02_variables)  
##### Back to: [Methods](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class) 
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)    



