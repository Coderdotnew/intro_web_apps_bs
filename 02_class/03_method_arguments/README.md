# method_arguments
Right when we think we are starting to get the hang of methods it's time to throw in arguments...   

![1](http://i.imgur.com/KpiqIrf.gif?1)  

The goal of a method is to write a program that can be applied to a number of different instances.  
- **Method arguments** allow for a much more flexible program. 
- Think of an argument as data that can be input into a method to make it more specific for the given instance. 
- In other words, we don't want to be stuck with one value for a variable within a method.
```ruby
def greeting
    name = "Jay-Z"
    puts "Hello #{name}!"
end
```
- In this method, I am limited to saying "Hello" to Jay-Z. This means that anytime I call the `greeting` method, it will only say "Hello" to Jay-Z. Well what if Kanye walked in and I called the `greeting` method. I don't think Yeezus would be happy being called Jay-Z. 
- To fix this, we want to add an argument when we define the method... 
```ruby
def greeting(name)
    puts "Hello, #{name}! How's it going?"
end

greeting("Jay-Z")
#=> Hello, Jay-Z! How's it going?

greeting("Kanye")
#=> Hello, Kanye! How's it going?
```
- Let's break this down.
- First, when you define a method that will have arguments, simply add in parentheses after the method name. 
- The argument is just a **variable** (remember, that thing that can store data). Because of this, we want to think critically about what we name it. In this case, I called it `name` to inform the user a name will be passed in as a string. 
- Inside the method, I **interpolated** the argument inside the string.
- Lastly, I called the method *twice*. The first time by passing in the name, "Jay-Z" and the second time passing in the name "Kanye".  

##### Note: Ruby is strict about arguments. This means, if you define a method with one argument, then you *MUST* pass in one argument or you will get an error.
```ruby
def greeting(name)
    puts "Hello, #{name}! How's it going?"
end

greeting
#=> example.rb:1:in `greeting': wrong number of arguments (0 for 1) (ArgumentError)
```
- In this case, I called the method, `greeting`, without passing in an argument. Ruby returned an `ArgumentError` stating there was the wrong number of arguments (0 were passed in when it was expecting 1)
2. When you pass in an argument, it must be a valid Ruby type (string, integer, boolean, etc). Notice what happens when I pass in a name without quotation marks surrounding it.
```ruby
def greeting(name)
    puts "Hello, #{name}! How's it going?"
end

greeting(kanye)
#=> example.rb:5:in `<main>': undefined local variable or method `kanye' for main:Object (NameError)
```
- Ruby gave us a `NameError`, stating it thought `kanye` was a variable because it was not wrapped around quotes, telling Ruby to interpret it as a string.  
![2](http://i.imgur.com/yYZB5jy.gif?1)

# multiple_arguments
- You are already probably asking yourself, well what if you want to make the method even more specific and pass in more values than 1. Fear no more because we can pass in more than 1 argument. 
- In the previous `greeting` method, only the name was passed in. However, what if we also wanted to further customize the greeting depending on the day of the week.
```ruby
def greeting(name, weekday)
    puts "Hello, #{name}! Happy #{weekday}!"
end

greeting("Kanye", "Friday")
#=> Hello, Kanye! Happy Friday!
```
- It is most important to note that the arguments are order specific, meaning they must be called in the order they are defined, in this case, `name` then `weekday`.
- It is possible to add in as many arguments as you would like, but be careful before using too many arguments because you will likely need another method so as to not overcomplicate each method with too many arguments

# default_arguments
- As a programmer, you want to design a program that has the smallest chance of giving the user an error.
- There are instances where you may want to define a **default argument**.
- A default argument is assigned to a value when the argument is defined. When there is a default argument present, the program will not return an error if the user does not pass in an argument, but rather Ruby will use the default argument value when running the method. But you also have the option of changing this argument when the method is called.
- For example, when you are shopping on Amazon and you add an item to a card, there is probably a default `quantity` argument with a value of `1`. You define a default argument just like you would define a variable, except this must occur within the parentheses that contain the argument definitinos. Let's take a look...
```ruby
def amazon_cart(item, quantity=1)
    "You added #{item} to your cart. There is currently #{quantity} in your cart."
end

amazon_cart("iWatch")
#=> "You add iWatch to your cart. There is 1 in your cart."
```
- No argument, no error! In this example, I defined two arguments, `item` and `quantity` which had a default value of `1`. This means that when I call `amazon_cart`, I *must* pass in an item, but if I don't pass in a quantity it will be automatically set to `1`. 
```ruby
def amazon_cart(item, quantity=1)
    "You added #{item} to your cart. You have #{quantity} in your cart."
end

amazon_cart("iWatch", 3)
#=> "You added iWatch to your cart. You have 3 in your cart."
```
- In this example, I was able to pass in `3` as a quantity which overwrote the default value. A default value gives the user the option to pass in a a specific value, or keep the value defined by the programmer without receiving an error!  

# arguments_vs_parameters
You may run into the keyword **parameter** when looking more into **arguments**. As far as the difference between the two, it primarily lies in the context which it is referred to.  

A **parameter** is what's given in the method definition. This is the value the method expects you to pass it when it is called.  
An **argument** is the value pass to a defined method parameter when the method is called.  

Simply put: parameters appear in method definitions; arguments appear in method calls  

For example, in below method, variables `parameter1` and `parameter2` are the parameters  
While calling the method, arg1 and arg2 are the arguments  
```ruby
def example_method(param1, param2) # define parameters here
    # code
end

example_method(arg1, arg2) # call method with arguments here
```
#### You *define* parameters, but *pass* in arguments. 


## Challenges    
##### [Method Math](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/03_method_arguments/code/01_method_math)  
##### [Annoying Little Brother](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/03_method_arguments/code/02_annoying_little_brother)    
##### [Subway Ride](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/03_method_arguments/code/03_subway_ride)      
##### [Concert Convos pt. 1](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/03_method_arguments/code/04_concert_convos_pt1)    

## Navigation  
##### Next lesson: [Challenges](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/04_challenges)   
##### Previous lesson: [Variables](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class/02_variables)    
##### Back to: [Methods](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class) 
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)  
 


