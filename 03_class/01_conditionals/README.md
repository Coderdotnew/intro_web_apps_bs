# conditionals  
Time to add some control into our programs, specifically **control flow**  

# control_flow
Control flow tells your program what code to execute based on what conditions are present. As humans, we see control flow on a daily basis. For instance, when driving, *if* the light is green, you go, *if* you are hungry, you grab a snack, *if* you score 90% or higher, you receive an A, and so on.  

Control flow is critical to coding efficient programs that only run certain conditions depending on whether or not a condition is true.   

# ruby_conditionals
There is specific syntax to implement control flow into your Ruby program. We are going to start small and then build up to some pretty complex programs dependent upon control flow.
```ruby
if (condition)
    # code
else
    # code
end
``` 
Let's break this down...  
- Just like a method has a keyword to begin (`def`), a conditional starts with the keyword `if`.
- After `if` is where the conditional statement goes. 
- *If* this statement is true, the next line of code will return, or *else* it will move to the next statement.
- Latly, there *must* be an `end` keyword to inform Ruby the conditional block is complete (or you will receive an error)  

Let's look at an actual example:
```ruby 
x = 1
if x < 5
    "x is less than 5"
else
    "x is not less than 5"
end
```
- Can you guess what this statement would return? That's right, `x is less than 5`.
- A conditional simply looks for true or false. 
- Because we are dealing with simple conditinoal blocks right now, *if* the first condition is true, it will run the first line of code, otherwise it will move onto the next line of code. 
- Notice there is no condition following the `else` keyword. This will make more sense as our conditionals become more complex, but consider the `else` Ruby's last resort to run code, to ensure that there is a fail-safe alternative if the previous condition is false.
```ruby
x = 1
if x == 1
    return "x is equal to 1"
else x != 1
    return "x is not equal to 1"
end
```
- In this case, writing `x != 1` was unnecessary and repetitive. `x` is either equal to 1 or it is not, there is no need to include a condition following `else`.  

Let's look at one more example to demonstrate this concept...
```ruby
if false
    "This will never get printed because the above statement is false."
else
    This will get printed"
end

if true
    "This will always get printed because the above statement is true."
else
    "This will not get printed"
end
```
- In the above examples, Ruby evalutes the condition and checks for `true` or `false` when detemrining what code to run. 
- `if` the code evaluates to `false` or `nil`, it will *not* run that code.

# code_along.
Let's make a simple control flow statement inside a method.  
Create a method, personal_greeting, that accepts 1 argument, name
```ruby
def personal_greeting(name)

end
```
Enter an `if` statement checking if the `name` is equal to Leonardo DiCarprio.  

This condition should return "Congrats on the Oscar! It's about time..." if true.
```ruby
def personal_greeting(name)
    if name == "Leonardo DiCaprio"
        "Congrats on the Oscar! It's about time..."
end
```
Add an `else` keyword that returns "Hello, " followed by their name (interpolate).
```ruby
def personal_greeting(name)
    if name == "Leonardo DiCaprio"
        "Congrats on the Oscar! It's about time..."
    else
        "Hello #{name}."
    end
end
```
Now run this with any name you wish to see how this control flow affects what our program returns!
```ruby
personal_greeting("Leonardo DiCaprio")
#=> "Congrats on the Oscar! It's about time..."

puts personal_greeting("Bill Gates")
#=> "Hello Bill Gates."
```
![1](http://i.imgur.com/HwWkcQC.gif)


## Challenges  
##### [Math Conditionals](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class/01_conditionals/code/01_math_conditionals)
##### [Palindromes](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class/01_conditionals/code/02_palindromes)
##### [Concert Convos pt. 2](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class/01_conditionals/code/03_concert_convos_pt2)  

## Navigation  
##### Next lesson: [Multi-Branch Conditionals](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class/02_multiple_branches) 
##### Back to: [Control Flow](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class)  
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   
