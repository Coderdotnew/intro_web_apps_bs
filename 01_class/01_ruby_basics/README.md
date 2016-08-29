# what_is_ruby?    
![1](http://i.imgur.com/Jsna8zj.png)
- Ruby is a dynamic and powerful server-side language that lets us build interactive applications. It was written to have elegant syntax and be easy to read and write.  
- You may have heard of *front-end* versus *back-end* programming. 
  - Front-end is stuff like HTML or CSS. 
  - Ruby is the backend. It sends and receives data from servers all around the world that keeps your web applications running smoothly.  
- Dynamic simply means changing, or not static (i.e. a website). Ruby enables us to intake user data and interpret this data to return information to the user. We will learn more about websites vs. web applications a bit later.
- Ruby was created in 1995 by Yukihiro Matsumoto (aka Matz). Matz said that he designed Ruby to be flexible. Ruby has been used to build web applications, server libraries, and even picture recognition engines. 
- We use Ruby to write programs...

# okay_so_whats_a_program?
- A program is just a text file that has special characters and keywords, or code, that the computer recognizes. As a coder, your job is to write this syntax in an order in which the computer can recognize and follow. So, a program is basically instructions for the computer.
- Programs must first be converted into machine code that the computer can understand, but our coding environment already includes Ruby installed, meaning the computer can interpret this code without first having to compile it into something like binary.

# syntax_and_keywords
- Think of Ruby as a foreign language with its own dictionary, style guide, and grammar. 
- There can be basically 3 types of "words" in a program:
  - **Ruby keywords** like `if`, `return`, or `else` (Ruby has approximately 45 keywords)
  - **Literal data**, including strings, integers, booleans, and floats (more on this soon)
  - **Defined barewords** that you create, like variables and method names (again, more on this soon)

#### Note: In code snippets, 
- `#` represents a value that is printed to the Terminal screen or a comment (which we will learn more about soon)
- `#=>` represents a return value that is *not* printed to the Terminal screen but has been interpreted by the Ruby interpreter
- The Ruby interpreter reads top to bottom and will print and return values in the same order they are read in  

```ruby
puts "Welcome to Coder.new!"
puts 1 + 1
"hello"

# Welcome to Coder.new!
# 2 
#=> "hello"
```
- On line 1, `puts` is a Ruby keyword so there is no error and `Hello World!` is printed to the screen.
- One line 2, `1 + 1` is acceptable Ruby syntax so there is on error and `2` is printed to the screen.
- On line 3, we see a literal return value expressed as a string (and displayed with the `#=>` sign). This is a literal data type because it still contains the quotes, demonstrating a literal interpretation of the data.


##### Let's learn some Ruby!  
![2](http://i.imgur.com/TJblvhF.gif)  

# literal_data_types
Ruby, and all programming languages, require data for a program. Ruby accepts several data types. The 4 data types we are introducing today are:   
  1. **Strings**: *Any and all* characters expressed within single or double quotation marks (I prefer double, but Ruby accepts both, we'll address this a bit later). Ruby does not speak English, so we must include all words, phrases, and characters inside quotation marks to inform the Ruby interpreter data is being input as a string.   
      - `"hello"`   
      - `"The year is 2016"`   
      - `"1 + 1 = 2"`   
      - `"!@#$%"`   
      - `"true"`  
      - `" "` 
  2. **Integers**: Whole numbers without decimal points. Integers are not surrounded by quotations.   
      - `1`   
      - `2`   
      - `500`    
      - `1010`    
  3. **Booleans**: A fancy word for true or false. Booleans are lower-case in Ruby and are not surrounded by quotations.   
      - `true`   
      - `false`   
  4. **Floats**: An integer followed by a decimal point.   
      - `1.0`   
      - `9.999`     
      - `0.1`   
  
# puts
- `puts` is an important keyword in Ruby, but are is also commonly misunderstood.  
- `puts` cleverly stands for **put** and **s**tring or put the string to the screen. `puts` prints the data (string, integer, boolean, or float) to the screen, and adds a newline character (`\n`) at the end of the string, which tells the interpreter to move to the next line at the end of the string.  
- Let's take a look at an example:

```ruby
puts "hello"
puts "goodbye"
#=> hellogoodbye
#=> goodbye
``` 

# return_values
- Interestingly, in the previous example using `puts`, Ruby is not printing "return values" to the screen, but rather the interpretation of the strings we input into the program.
- Huh? I know that's a bit confusing. `puts` simply repeats to us what we told it to, but didn't actually do any work behind the scenes, kind of like copy and paste.
- But, *everything* in Ruby has a return value, so what is the return value when you use `puts`? 
- Here's some examples:  

|Code| Return Value|
| ------------- |-------------|
|`"Hello"`|`"Hello"`|
|`true`|`true`|
|`1+1`|`2`| 
|`"1+1"`|`"1+1"`|
|`puts "Hello"`|`nil`|
|`puts 1+1`|`nil`|  

- Without the keyword `puts`, Ruby will return the *literal* value of the data you entered, including the quotation marks when dealing with strings, as seen in the first 4 examples.  
- Note in the first 2 lines, `"Hello"` and `"Hi"`, there is no keyword. `return` is an *implicit* keyword, meaning Ruby will automatically insert it for you and still return the *literal* value, as seen when `"Hello`" and `"Hi"` were returned.  
- However, because `puts` does not *evaluate* the code, but rather repeat it and print it to the screen, the return value is `nil`, as seen in the last 2 examples
- We will get more into `nil` as the course progresses, but think of it as something in Ruby that represents nothingness. 

##### You're doing great! These concepts will become much more clear as you begin to write your own Ruby code. Let's start our first code along!

# code_along
In this first code along, we are going to use a tool called **IRB**, or Interactive Ruby. IRB is a **REPL** (read-evaluate,-print-loop), which is like a simple computer programming environment that takes user inputs, evaluates them, and returns the result to the user.  

IRB is not a proper programming environment and does not save work. It will be used very briefly in these first few lessons until we become more comfortable running Ruby files.  

- In your terminal, type `irb` into your command line and press `enter` and should see: (note: the 2.3.0 is the Ruby version)  

```
2.2.0 :001 > 
```

- Now let's write our first program!

```
2.2.0 :001 > puts Hello, World!
NameError: uninitialized constant Hello
  from (irb):1
  from /Users/coderdotnew/.rvm/rubies/ruby-2.2.0/bin/irb:11:in `<main>'
```

AHHHH AN ERROR. Kidding, we love errors. Let's check it out.  
  - If we break down this error it tells us *what* we did wrong and *where* this incorrect code can be found. 
  - According to the message, there is an uninitialized constant called `Hello` and it is on line `1`  
  - Two things to note:   
      1. Think of `Hello` as a word that Ruby does not know (because it doesn't speak English) and we never defined this word for Ruby so the interpreter freaked out.  
      2. The reason it ignored `, World!` is because Ruby will stop evaluating the program as soon as something is broken before moving on in order to save memory and be as effective as possible (why continue interpreting if you already know the program is broken, right?)

- Let's fix this.

```
2.2.0 :001 > puts "Hello, World!"
Hello, World!
 => nil
```

YOU WROTE YOUR FIRST PROGRAM! The `Hello, World!` program is famously the first program many computer programmers write. So welcome to the club!  

- Ruby first printed `Hello, World!` to the screen. Notice there are no quotes because we use `puts` and `print` for the user, the quotes are for the computer. When it is printed, the quotes are removed because we can understand words without making them strings (with quotes around them)   
- The return value, as expected, is `nil`, as depicted by the `=>`symbol. Can you remember why this is our return value?   
- Also, don't freak out when you see the word program. Remember, a program can be as simple as one line printed to your screen!   

#### Let's explore a bit!
1. Write a program that prints your full name and returns `nil`
2. Write a program that returns your full name, but does not print it (Hint: A string is only considered printed if it is not surrounded by quotes and if it is not preceded by a `=>` symbol. The `=>` signifies a return value follows)
3. Write a program that evaluates a simple math expression using addition (`+`) or subtraction (`-`) and returns the answer
4. Write a program that evaluates a simple math expression using multiplication (`*`) or division (`/`) and returns the answer

#### Note: To exit IRB, type `exit` and press `enter`  

# ruby_files
Remember, to run a Ruby file, enter `ruby file_name.rb` in the command line (note: `file_name.rb` should be replaced with the file name, in this case, `hello_world.rb`).  

You *must* be in the directory that contains the Ruby file, or your Terminal will be unaware the file exists. Check out the [Bash Tutorial](https://github.com/Coderdotnew/bash) to brush up on your commands and the [Running Ruby Files Tutorial](https://github.com/Coderdotnew/ruby_files) to remind yourself how to run the file!

## Navigation  
##### Next lesson: [Data Types](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/01_class/02_data_types)  
##### Back to: [Introduction to Ruby](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/01_class)
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)  

