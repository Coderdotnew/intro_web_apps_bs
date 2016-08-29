# string_methods
Strings are important in Ruby. We know that Ruby doesn't really understand what is inside the string, just that it is a combination of characters, special characters, and integers. There is a whole list of built-in methods reserved specifically for strings in Ruby. 
- Here is a list of Ruby [string methods](http://ruby-doc.org/core-2.2.0/String.html). In the left column, each method is shown with a `#` in front of the method name.
- In the left column, each method begins with a `#` and if you click it, the documentation will provide examples of how to use this method
- Let's check out a few methods and their return values
```ruby
"haha".upcase
#=> "HAHA"
"Ruby".reverse
#=> "ybuR"
"PuNk RoCk".swapcase
#=> "pUnK rOcK"
```
- You get the idea. 
- Sometimes, you get an integer as a return value, for instance if you want to know the length of a string
```ruby
"abcdefghijklmnopqrstuvwxyz".length
#=> 26
```
![1](http://i.imgur.com/nH1HDqA.gif?1)
# method_chaining
**Method chaining** is a term used that means we can call numerous methods at once. 
```ruby
"Hello, World!".upcase.reverse
#=> "!DLROW ,OLLEH"

123456789.to_s.reverse
#=> "987654321"
```
- Simple as that! As long as you are allowed to call the method, you can chain as many as you would like.  

# string_method_arguments
- Some string methods require **arguments**. 
- An argument is *passed into* a string method to further specify the function the method should perform. 
- For example, if there is an old document that uses the year "2015", but we want to substitute the "2015" for "2016" in each string. We would need to tell Ruby we want to first find each "2015" and substitute it with "2016".
- We use the same parentheses syntax when passing in arguments.

```ruby
"The year is 2015.".gsub("2015","2016)
#=> "The year is 2016."

"The year is 2015 and February has 28 days.".gsub("2015","2016").gsub("28","29")
#=>"The year is 2016 and February has 29 days.
``` 
- The `.gsub` method requires the first argument passed in to identify the portion of the string to identify and the second argument passed in tells Ruby what to subsitute it for. 
- In the second example, two `.gsub` methods are *chained* together, each with their own specific arguments passed in.



## Navigation  
##### Next class: [Methods](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/02_class)      
##### Back to: [Introduction to Ruby](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/01_class)
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)  
