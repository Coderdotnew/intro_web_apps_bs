# mutli-branch_conditionals
Now that we have some practice incorporating control flow into our programs, it's time to add some complexity...  
![1](http://i.imgur.com/KY5zGyf.gif?1)
# elsif
Control flow within programs are usually more complex than we have seen thus far. There will often be more than one condition to check within a program. When this is the case, we use `elsif` (else if) as another **branch** in our conditional block (the conditional block is from the opening `if` keyword to the closing `end` keyword). For example:  
```ruby
def menu
    puts "Enter: Home, Play, Help, or Exit"
    choice = gets.chomp
    if choice == "Home"
        puts "Welcome to the menu"
    elsif choice == "Play"
        puts "Let's play!"
    elsif choice == "Help"
        puts "What do you need help with?"
    elsif choice == "Exit"
        puts "Goodbye!"
    else
        "Invalid choice"
    end
end
```
- That might like a bit complex at first, but I'm sure you can break it down!
- This is a control flow you have likely run into that let's you choose different options in a menu, perhaps in a video game
- Look at each `elsif` as a separate branch in the conditional block, and each `elsif` acts as its own `if` statement.
- Let's checkout the `else` option
- Notice there is no condition following `else` because this is reserved for any input that is not previously defined. Meaning if a user inputs anything other than `"Home"`, `"Play"`, `"help"`, or `"Exit"`, the program will run `"Invalid choice"`. It would be impossible to account for *every other option*  
- It's SUPER IMPORTANT to realize that as soon as there is a condition that equates to `true`, the following line of code will run, and the conditional block will end.
- Even if there are more `true` options later in the block, only the first true block will run. For example:
```ruby
if 10 > 5
    puts "10 is greater than 5"
elsif 3 > 2
    puts "3 is greater than 2"
elsif 2 > 1
    puts "2 is greater than 1"
else
    puts "None of the above are true"
end
```
- If we run this program, *only* the first condition's code will run `"10 is greater than 5"` because it is `true` and Ruby will not continue checking for more `true` statements (that would be potentially exhaustive and take a lot of memory!)
- Notice there is still an `else` statement, *just in case* the other options do not equate to true

# specific_to_generic
- Like all program design, creating conditional loops requires you to think critically about where certain conditions should go. 
- For example, a specific case should go first for the reason we will see below.
```ruby
def president_qualification(country_born, age)
    if country_born == "United State"
        puts "Eligible"
    elsif age < 35
        puts "Ineligble"
    else
        puts "Ineligible"
    end
end

president_qualification("United States", 34)
```
- In order to be eligible to be elected president, one must be born in the United States and be at least 35 years old. 
- As this program is written, when I call this method with the arguments `"United States"` and `34`, the program will pass because the first condition is true in that `president_qualification` equates to `"United States"`
- This can be rewritten to have a more specific case at the top of the block and have more generic cases at the bottom, with the `else` condition as the *most generic* case
```ruby
def president_qualification(country_born, age)
    if country_born == "United State" && age >= 35
        puts "Eligible"
    else
        puts "Ineligible"
    end
end

president_qualification("United States", 34)
```
- When calling the method this time, the candidate would be deemed `"Ineligible"` because the first condition does not equate to `true`. 


## Challenges  
##### [Awards Season](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class/02_multiple_branches/code/01_awards_season)  
##### [FizzBuzz](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class/02_multiple_branches/code/02_fizzbuzz) 
##### [Leap Year](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class/02_multiple_branches/code/03_leap_year) 

## Navigation  
##### Next lesson: [Calculator Project](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class/03_calculator)     
##### Previous lesson: [Conditionals](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class/01_conditionals)  
##### Back to: [Control Flow](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/03_class)  
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)  