# intro_to_loops
Time for loops.     
![1](http://i.imgur.com/TlFW50T.gif)  
(Get it? It's a gif that loops? Anyway...)

Loops are used to execute the same block of code for a specified number of times. Let's look at a basic example to see what I'm talking about. This is a bit contrived because we would want to add more details to our program later, but bare with me for now.
```ruby
def say_hello
    puts "Hello!"
    puts "Hello!"
    puts "Hello!"
    puts "Hello!"
    puts "Hello!"
end
```
- When this runs, the output will simply be `"Hello!"` 5 times. As you can already see this could become annoying to type over and over again.
# times_loops
You will quickly notice there are a number of ways to perform the same exact function in Ruby. The syntax for the *times loop* is as follows:  
```ruby
5.times do
    puts "Hello!"
end

# Hello!
# Hello!
# Hello!
# Hello!
# Hello!
```
- A few new things to take note of. 
- First, the number of loops you want to perform comes first and is entered as an integer--I chose 5. 
- Second, we see that a `.` follows the integer which means we are calling the method `times`. 
- Third, we see a `do` keyword. In Ruby loops, the `do` keyword is an execution keyword that tells Ruby to begin interpreting the following code. Also, it reads rather nicely, try it... "5 times do *this code*". Not bad, right?
- Lastly, it is critical to recognize the `end` keyword associated with loops. Similar to conditionals, you need to tell Ruby to stop doing something, just like you tell it to start doing something.
- Note: If you include a loop inside of a method, there must be **2** `end` keywords--one for the method and one for the loops!

# infinite_loops  
![2](http://i.imgur.com/sztPMHF.gif)      
As the program designer, you must carefully consider how the Ruby interpreter will *literally* interpret your code. An **infinite loop** is when you do not give Ruby instructions on when to *break* the loop...

 # loop_do  
The next loop syntax is simply using the `loop` keyword. Again, `do` tells the Ruby interpreter to run the following code.
```ruby
loop do
    puts "YOLO"
end
```
- When this code runs, the interpreter goes berzerk! 
- `loop` tells Ruby to get ready to repeat specific code
- `do` tells Ruby that executable code is coming its way
- `end` tells Ruby that the code to execute is done
- *However*, there is nothing telling Ruby to actually stopping printing `"YOLO"` to the screen! Ruby will do this forever and ever until your computer runs out of memory. In the previous example, Ruby knew to only loop 5 times!
- If you find yourself in a repeating loop, type `control + c` into your command line to exit the loop.

# break
The `break` keyword is pretty great, because it literelly tells your loop to stop. Looking at the previous example, let's add a `break`...
```ruby
loop do
    puts "YOLO"
    break
end

=> YOLO
```
- In this case, Ruby entered a loop, but because Ruby reads top to bottom, it saw the `break` keyword before it could re-enter the loop, and therefore broke out of the loop and stopped running the program!

# counters
- Let's jump into an applicable example of a loop. For this, we will need to introduce a **counter**
- A counter is an **interator** that increases or decreases until a specific condition is met. An iterator will increase or decrease depending on the instructions you provide. It is used so we can have a different return value each loop. Let's take a look
```ruby
def growing_up
    age = 1 # this is my counter that I will iterate over in each loop
    loop do 
        if age <= 5
            puts "You're #{age} years old!"
            age = age + 1
        else 
            break
        end
    end
end

# You're 1 years old!
# You're 2 years old!
# You're 3 years old!
# You're 4 years old!
# You're 5 years old!
```
- WOAH! Don't worry, you actually know all of this already.
- First, we defined our method, `growing_up`
- Next, we set a counter = to `1`. A counter is a variable that can be called anything, sometimes it is literally called counter, but it's up to you!
- Next, we defined a loop and included the `do` keyword to tell Ruby that it's going to start executing some code.
- Notice we then inserted a conditional block inside this loop. This allowed us to tell Ruby what *conditions* to follow for the loop, and if those conditions were not met, then to `break` out of the loop
- In the first loop, age is set to `1` and Ruby checks to make sure the age is less than or equal to 5. Check.
- Next, it prints `You're 1 years old! to the screen`. The `age` variable is interpolated in this string.
- The next line is new. `age = age + 1` is reassigning the age counter after the first loop. What is literally happening is Ruby is taking `age` and setting it equal to itself + 1. 
- ` age = 1 + 1`. The counter is now equal to `2`! Ruby does this all inside the counter.
- In the next loop, age is still less than or equal to 5 so it prints `You're 2 years old!`
- Ruby will continue following this loop until the age counter exceeds 5, at which point it will no longer meet the condition of being less than or equal to 5 and will therefore `break` out of the loop and we won't have a repeating loop! 
- Lastly, notice there are 3 `end` keywords (1 for the method, 1 for the loop, and 1 for the conditional block!!)
###### Counters FTW!

- However, counters can be tricky to think about conceptually, so it's always important to remember Ruby interprets *top to bottom, 1 line at a time*. 
- Watch what happens when the previous code is changed around ever so slightly...  
```ruby
def growing_up
    age = 1 # this is my counter that I will iterate over in each loop
    loop do 
        if age <= 5
            age = age + 1
            puts "You're #{age} years old!"
        else 
            break
        end
    end
end

# You're 2 years old!
# You're 3 years old!
# You're 4 years old!
# You're 5 years old!
# You're 6 years old!
```
- Kind of weird, right? 
- Before Ruby can execute it's code, you are increasing the counter value, so the first loop is `1+1` which is why it prints `You're 2 years old!`
- This is why it's important to think about where to increase the counter and where to break your code!
- Can you think about why `You're 6 years old!` was printed, even though 6 is greater than 5?  
- Note: Counters are variables that are set to a value. YOU, the programmer, determines how much the counter increases or decreases over each iteration. It can be 1 or 5 or 10 or 1,000,000! You can also divide and multiply, or pretty much manipulate your value however you please, just know this will happen every loop.
```ruby
def growing_up
    age = 10 # this is my counter that I will iterate over in each loop
    loop do 
        if age <= 50
            puts "You're #{age/10} decades old!"
            age = age + 10
        else 
            break
        end
    end
end

# You're 1 decades old!
# You're 2 decades old!
# You're 3 decades old!
# You're 4 decades old!
# You're 5 decades old!
```
- See if you can break down that example!

# loops_and_return_values
- These loops we have been seeing have a return value of 'nil`. As we get into more complex loops, the return values will be the *last value the loops executes. 
- If we want a return value that is not `nil`, we must write it OUTSIDE of the loop block. Notice in the example below that it is the line after the `end` keyword that corresponds with the `loop do` start keywords.
```ruby
def loops_return_value
    i = 1 #it is common to use i as a counter, or iterator
    loop do
        if i <= 5
            puts "This is loop #{i}."
            i = i + 1
        else 
            break # this keyword breaks out of the lopo
        end
    end
    "This is the return value" # the return value must be OUTSIDE of the loop block 
end

# next we will call the method
loops_return_value 
# This is loop 1.
# This is loop 2.
# This is loop 3.
# This is loop 4.
# This is loop 5.
#=> "This is the return value"
```
- However, when we don't include `puts` or `print`, the loops returns *the last value in the loop iteration*. Here's a simple example to demonstrate this.
```ruby
def return_value
    counter = 1
    loop do 
        if counter >= 10
            break
        else 
            counter = counter + 1
        end
    end
    counter
end

# call the method below
return_value 
#=> 10
```
- Our return value in this case is `10`, which is the last value in the loop iteration. Though the loop executes integers `1` through `9` as well, it only returns the last value executed in the loop.

# code_along
- For this code along, we will be using method arguments, loops, and conditional blocks, so get ready! 
- You've signed up for a marathon (and obviously told every single person you know, becaue that's essentially why anyone would ever do a marathon, right?)
- We know a marathon is about 26 miles and we want to create a loop that will print out how many miserable miles we have left to run at the end of each completed mile.
- For example, at mile 10, our program prints `Only 16 miles to go!`  
- But at mile 0, when complete, the program returns `"You finished and you are alive!"`  

Create a method, marathon_loop that 1 argument, miles
```ruby
def marathon_loop(miles)

end
```
Define loop inside of the method. I like to add the `end` keyword before I even code the logic!
```ruby
def marathon_loop(miles)
    loop do
    
    end
end
```
Add a conditional block that prints the number of miles left if the mile value is greater than `0`
```ruby
def marathon_loop(miles)
    loop do
        if miles > 0
            puts "Only #{miles} miles to go!"
        end
    end
end
```
Add a counter that reduces the `miles` value with every *loop iteration*
```ruby
def marathon_loop(miles)
    loop do
        if miles > 0
            puts "Only #{miles} miles to go!"
            miles = miles - 1
        end
    end
end
```
Complete your conditional block to return `You finished and you are alive!` once `miles` is equal to 0 (after 26 loops). Remember, this is your *only* return value. Don't forget to add a `break` keyword so the loop knows to stop!
```ruby
def marathon_loop(miles)
    loop do
        if miles > 0
            puts "Only #{miles} miles to go!"
            miles = miles - 1
        else
            break
        end
    end
    "You finished and you are alive!"
end
```
Call your method and pass in 26 miles! (or 13 if you think you will only do a half-marathon!) and run your program!
```ruby
def marathon_loop(miles)
    loop do
        if miles > 0
            puts "Only #{miles} miles to go!"
            miles = miles - 1
        else
            break
        end
    end
    "You finished and you are alive!"
end

marathon_loop(26)
# Only 13 miles to go!
# Only 12 miles to go!
# Only 11 miles to go!
# Only 10 miles to go!
# Only 9 miles to go!
# Only 8 miles to go!
# Only 7 miles to go!
# Only 6 miles to go!
# Only 5 miles to go!
# Only 4 miles to go!
# Only 3 miles to go!
# Only 2 miles to go!
# Only 1 miles to go!
#=> "You finished and you are alive!"
```
![3](http://i.imgur.com/YWtFBMy.gif)


## Challenges  
##### [New Years Eve](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/01_loops_intro/code/01_nye)
##### [Black Friday](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/01_loops_intro/code/02_black_friday)
##### [Snooze](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/01_loops_intro/code/03_snooze)  

## Navigation  
##### Next lesson: [More Loops](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/02_more_loops)      
##### Back to: [Loops](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class)  
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   

