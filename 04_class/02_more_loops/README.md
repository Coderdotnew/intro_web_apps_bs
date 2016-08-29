# more_loops
The goal of this README is to learn how to do loops with as much flexibility as possible. But first...  

# why_do_we_even_use_loops_?
It can be a bit tough to see the value in loops without using too much data. Let's think about loops using a real life example.  

In the next lesson we learn about how to organize data, for example a list of usernames, emails, birthdays, cities, basketball teams, presidential candidates, really anything you can think of that can be stored and organized! For now, we are going to use a table to represent a small list of flight numbers and flight numbers.  
![1](http://i.imgur.com/mGFjwIx.gif)  

| name        | flight_number          | 
| ------------- |:-------------:|
| Bruce Banner | 4702 |
| Clark Kent | 1304 | 
| Tony Stark | 758 | 
| Wade Wilson | 73 | 
| Bruce Wayne | 333 | 
| Steve Rogers | 73 |  

You get the idea. Now, imagine there about 100,000 more rows of passengers and flights numbers that could not possibly fit on this page.  

News just came in there is a storm in NYC and flight 73 has been delayed. You need to find the passengers in the data set to text and inform them of the delay. As a programmer, you can either manually read through the entire list, or create a loop that will automatically loop through every flight number in the data set and perform a specific function upon the condition you set.  
```ruby
def flight_delay
    loop do
        if flight_number == 73
            "#{name}, you're flight is delayed by 30 minutes due to weather." 
        else
            "#{name}, you're flight is on time."
        end
    end
end
```
- It can be a bit tough to still see the big picture, however, think of a loop as an automation tool that allows you to search through huge lists very rapidly. Remember, we use code to make our lives easier! 

# more_loops
Before learning about several other loops, there is shorter syntax for using counters.

- Currently here's what we have
```ruby
counter = 1
counter = counter + 1
# this increments the counter by 1 for every loop
```
- The new syntax...
```ruby
counter = 1
counter += 1
# this increments the counter by 1 for every loop

counter = 1
counter -= 1
# this decreases the counter by 1 for every loop

counter = 1
counter *= 2
# this multiples the counter by 2 for every loop

counter = 100
counter /= 2
# this divides the counter by 2 for every loop
```
- Note: We will be using the shorter syntax for the rest of the course.

We are going to look at a basic exaple of a loop and how this loop can be performed numerous ways in Ruby. Let's perform this loop using the syntax we already know.  
```ruby
# we want each loop to output the following code

# This is iteration 1.
# This is iteration 2.
# This is iteration 3. 
# This is iteration 4.
# This is iteration 5.
#=> "This is the return value."
```
```ruby
def loop_do
    i = 1
    loop do
        if i <= 5
            puts "This is iteration #[i]."
            i += 1
        else
            break
        end
    end
    "This is the return value."
end
```

# while_loop
A **while loop** executes code *while a conditional is true*. 
```ruby
def while_loop
    i = 1
    while i <= 5
        puts "This is iteration #{i}."
        i += 1
    end
    "This is the return value."
end
```
- Notice there is no `if` and `else` conditional block, as the while loop includes this logic inherently.
- Also notice that because the loop will automatically stop once the condition is met, we do not need a `break`. Clearner, isn't it?!

# until_loop
**Until loops** are similar to **while loops* but backwards, sort of. Until loops execute code *while a condition is false* or rather, *until it is true*.
```ruby
def until_loop
    i = 1
    until i > 5
        puts "This is iteration #{i}."
        i += 1
    end
    "This is the return value."
end
```
- It's important to read these logically and really think about how these loops are working. 
- It reads nicely: "Until the counter is greater than 5, output this statement. Until the iterator is greater than 5, break the loop and return this value."

# for_loop
**For loops** loop through a **range** of numbers. The syntax for a range is as follows:
```ruby
(1..5) 
#=> 1, 2, 3, 4, 5  
(1...5) 
#=> 1, 2, 3, 4 (does not include 5)
```
```ruby
def for_loop
    i = 1
    for i in (1..5)
        puts "This is iteration #{i}."
    end
    "This is the return value."
end

for_loop
# This is iteration 1.
# This is iteration 2.
# This is iteration 3.
# This is iteration 4.
# This is iteration 5.
#=> "This is the return value."
```
- Notice in this loop we *do not need to explicitly increase our counter.* 
- Because there is a range for the loop to iterate through, in this case 1 through 5, the counter will automatically increase. 


##### There are pros and cons to each style of looping, but it's most important to become comfortable with the syntax and logic of each. Time to practice!


## Challenges  
##### [Loopy](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/02_more_loops/code/01_loopy)
##### [Netflix Binge](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/02_more_loops/code/02_netflix_binge)
##### [FizzBuzz Loops](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/02_more_loops/code/03_fizzbuzz_loops)  

## Navigation  
##### Next lesson: [Challenges](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/03_challenges)    
##### Previous lesson: [Intro to Loops](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/04_class/01_loops_intro)    
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)     


