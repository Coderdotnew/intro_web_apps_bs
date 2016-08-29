# ruby_math
I hope you are starting to feel *slightly* more comfortable with Ruby than you did when you started. If not, that's okay because this section of class is all about MATH!  

![1](http://i.imgur.com/Jg7KtOw.gif)   

Let's take a look at the math Ruby can do:  
- Ruby accepts the 4 primary operators  

```ruby 
9 + 3
9 - 3
9 * 3
9 / 3

#=> 12
#=> 6
#=> 27
#=> 3
```
- Ruby can also perform exponents using the following template: `base ** exponent` (i.e. 2 ** 2 is the same thing as 2 ^ 2)

```ruby 
2 ** 3
4 ** 2
5 ** 4

#=> 8
#=> 16
#=> 625
```
# modulo
A common operator in computer science is known as the **modulo**. The modulo operator returns the *remainder* of a division expression.   
- For example, 10 divided by 1 is 10, so 10 modulo 1 is 0. However, 10 divided by 4 has a remainder of 2, so 10 modulo 4 is 2.  
- Can you think of an instance in an application where the modulo operator might come in handy?  

```ruby 
25 % 5
25 % 4
10 % 3

#=> 0
#=> 5
#=> 1
```
- Ruby can do some pretty sweet comparisons, too. When I say pretty sweet comparisons I mean just regular ones.  
- A comparison in Ruby will always return either `true` or `false`.  
- Note: `>=` is greater than or equal to and `<=` is less than or equal to  

```ruby
100 > 99
100 < 99
100 >= 100
100 <= 100

#=> true
#=> false
#=> true
#=> true
```
- All right, back to using strings. To compare values in Ruby, you use `==` (equal to) or `!=` (not equal to). Pretty straightforward, right? Be careful with strings, as they must be the same exact literal value in order to return `true` when comparing (including punctation, capital letters, and whitespace, aka spaces).  
- Notice again, the return values for comparisons is either `true` or `false`  

```ruby
"Hello, World!" == "Hello, World!"
"hello world" == "Hello, World!"

#=> true
#=> false

"1".to_i == 1
1+2 == 3

#=> true
#=> true

puts 1.even? == true
puts 2.even? == true

# false
# true
```
- The complexity of comparing strings, integers, booleans can get pretty intense, especially when including methods. So we'll keep it simple for now and continue to get more complex as we move along.  

# code_along 
This code along will build on the skills we just learned. Let's open IRB.  

- We are going to work with compound comparisons using `&&` and `||`
- `&&` check both sides of a comparison and will only return `true` if both sides are true
- `||` (the lines are referred to as **pipes**) check both sides but will return true if either side of the comparison is true  

- In your IRB, compare the value of any 2 integers using `>` or `<`

```ruby
2.2.0 :001 > 2 > 1
```
- This returns `true`
- Easy enough. 

- Now let's add in the `&&` operator  

```ruby
2.2.0 :002 > (2 > 1 && 1 > 2)
```  
- This returns `false`
- Note: The `()` are added around the comparison for readability  
- This comparison did not return true because both comparisons were not true (the second one failed)

- Let's use the `||` operator now
```ruby
2.2.0 :003 > (2 > 1 || 1 > 2)
```
- This comparison returned `true` because only 1 of the comparisons had to pass as true (the first one)  

- Let's get a little more complex
```ruby
2.2.0 :004 > (2 > 1 || 1 > 2) && ("string" != "String" && 5 == "5".to_i)
```
- This returns `true`
- Remember, Ruby reads from left to right and is looking for the first comparison to return false. 
- On the left side of the `&&`, one of the comparisons passes so Ruby continues to the right side of the `&&`
- `"string"` is NOT EQUAL TO `"String"` AND `5` IS EQUAL to `"5".to_i`. 
- Our compound comparison is `true`.

#### These comparisons will get easier with time. It's important to read through them carefully, and break apart the problem as much as possible   
![2](http://i.imgur.com/VbsuTxJ.gif)  


## Navigation  
##### Next lesson: [String Methods](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/01_class/04_string_methods)     
##### Back to: [Introduction to Ruby](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/01_class)
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)  

