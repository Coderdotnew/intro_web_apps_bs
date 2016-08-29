# ruby_data_types
Now that we have a bit of background on what Ruby is and a how to code the most basic programs, let's jump into...  
![1](http://i.imgur.com/RWN8EiI.gif)  

# data  
**Data** is anything entered into the program by the user. QUICK! Who can remember the four data types we covered in the last lesson? 
  1. Integers   
  2. Strings   
  3. Floats   
  4. Booleans   

![2](http://i.imgur.com/Mf2VlrZ.gif)  

# integers 
**Integers** are the most straightfoward data types as they are simply whole numbers (including 0 and negatives). Ruby is an amazing mathematician and can pretty much do any calculation you can think of, but obviously follows PEMDAS.  

- Integers *are not* surrounded by quotations (pop quiz: if you surround an integer with quotation marks, what data type does it turn into?)  

```ruby
1+1
75/25
100*100
```
- When the program runs, nothing happens... or does it? There's no error so what happened? Well, nothing was *printed* to the screen.  
- If you recall, `return` is an *implicit* keyword, meaning Ruby inserted `return` on its own. 
- Therefore, Ruby evaluated each of these expressions and there was a return value stored, however, it was not *printed* to the screen because we did not use the `puts` keywords. Let's try that again.  

```ruby
puts 1+1
puts 75/25
puts 100*100
# 2
# 3
# 10000
```
- Reminder: Ruby evaluates top to bottom which is why we see our return values printed in this order.    
- You might be wondering why the expression was calculated and then printed, even though `puts` does notevaluates and has a return value of `nil`.  
- In the case of integers and integer expressions, Ruby views these expressions as *one literal value*.  

Because Ruby is a great calculator, when it runs `1+1` it sees `2` and when it runs `10*10` it sees `100`. Ruby views expressions as a literal value, which is the value being *printed* to the screen or *returned*, depending on your program.  

# strings  
**Strings** are anything written inside of single or double quotation marks (I prefer double, but Ruby will accept both)  
![3](http://i.imgur.com/kYFYNZc.gif)    

- It would cost a lot of memory to add the entire English dictionary into the Ruby interpreter database, that's why it only knows about 45 keywords and a handful of other symbols and syntax rules.  
- We use strings to provide *literally any other word, made up word, sentence, character, number, etc.* into our program. 
- To the Ruby interpreter, everything inside the quotes are a foreign language, but it will interpret them and do whatever we tell it to!  
- One more thing... If you want to add a single or double quotation mark inside of a string, you must use a single inside of double quotation marks or a double inside of single quotation marks (but you'll see why I use double quotation marks to define my string, and use a single quotation mark inside my string) Check below for examples:  

```ruby
puts "Hello, World!"
puts "1 + 1 = 2"
puts "Good morning!" + "How are you?"
puts "I'm a Rubyist!"
puts 'I"m a Rubyist, too!'

# Hello, World!
# 1 + 1 = 2
# Good morning!How are you?
# I'm a Rubyist!
# I'm a Rubyist, too!  
```
- What? It's straightforward, I promise...
- Ruby printed the *literal* values which is why we see `1 + 1 = 2`, because they are strings and not numbers, meaning Ruby spit them right back out at us.
- You can add a string?! Absolutely. This is called **string concatenation**  
    - Be careful though. You'll notice there is no space between `!` and `How`. This is because Ruby will not add a space because it doesn't know how to speak English. You must add in the space yourself either after the `!` or before the `Hello`.  

Let's try something new...  

```ruby
puts "My age is " + 26

#=> example.rb:1:in `+': no implicit conversion of Fixnum into String (TypeError) from example.rb:1:in `<main>'
```
- Error alert! Chill, bro. Let's break it down.  
- My error tells me this occurs in line 1 (duh for a 1 line program, but this is helpful when you have thousands of lines of code)  
- My error tells me there is `no implicit conversion of Fixnum into String (TypeError)`.  
- In plain English, Ruby cannot add numbers and strings.  
- We'll get back to this very shortly.   

# floats  
Floats are just numbers with a decimal point.   
The major note here is if you perform math on a float with an integer, the return value will be a float (Ruby like to return the most specific answer, in this case, a float is more specific than an integer).

![4](http://i.imgur.com/oxr1jgh.gif)   

```ruby
puts 1.5 + 1.5
puts 10.0 + 10
puts 10 - 0.1

# 3.0
# 20.0
# 9.9
```  

# booleans  
`true` and `false` are **booleans**  (notice no quotation marks aka a boolean is *not* a string)  
`"true"` and `"false"` are **strings**   

...that is all 

# ruby_methods
We will cover methods extensively later, but for now, consider a method a basic set of instructions that perform a specific function. Luckily, Ruby has a handful of methods pre-written that we can **call**.
- **Calling a method** means to add that functionality to the data we are currently working with. 
- We call a method using **dot notation**. Let's take a look at the methods we will use today...  
  - `.to_i` stands for "to integer" (clever right, thanks Matz). This is called on a string to convert a string to an integer.  
  - `.to_s` stands for "to string" (told you Ruby makes sense). This is called on an integer to convert an integer into a string.  

```ruby
"1" + "1"
"1".to_i + "1".to_i
4.to_s + "6"
"What happens if I do this?".to_i
"1.5".to_i
10.7.to_i

#=> "11"
#=> 2
#=> "46"
#=> 0
#=> 1
#=> 10
``` 
- Remember, adding 2 strings will return the literal value of those strings. In the eyes of Ruby, a `"1"` is a random character inside quotes whereas `1` is an integer.  
- When *calling* the `.to_i` Ruby method on a string, is is converted into an integer and treated as such when evaluated
- In the 3rd case, the integer is converted into a string which is why `46` was printed and not `10`
- Calling `.to_i` on any string that does not contain an integer Ruby recognizes will return `0`
- Lastly, calling `.to_i` on a float will only return the integer present and ignore everything after the decimal point (Ruby will not round in this case)  
 
  - `.even?` This is called on an integer (calling on a float will raise an error) to check if an integer is even. It will return `true` or `false`   
  - `.odd?` This is called on an integer (calling on a float will raise an error) to check if an integer is odd. It will return `true` or `false`   

Note: you can call `.even?` on an odd integer and `.odd?` on an even integer  

```ruby
1.even?
1.odd?
526.even?

#=> false
#=> true
#=> true
```
Make sense? Perf.

# code_along
Open IRB. Make the following 3 lines of code run without error in your IRB  
- `"6" + "6"` (should return `12`) 
- `"6" * "6"` (should return `36`)
- `"5" + 4` (should return `9`)
- `"The temperature today is " + 85 + " degrees."` (should return `The temperature today is 85 degrees.`)
- Call `.even?` on any integer that will return `true`
- Call `.odd?` on any integer that will return `false`
- Challenge: call `.even?` on `"1"` (should return `false`)  

#### Note: If you ever get stuck in IRB because of syntax or because IRB is :poop: sometimes and just breaks, type in `exit!` + press `enter` and it will force exit IRB 


## Navigation  
##### Next lesson: [Ruby Math](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/01_class/03_ruby_math)    
##### Back to: [Introduction to Ruby](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/01_class)
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)  

