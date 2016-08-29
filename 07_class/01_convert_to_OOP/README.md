# convert_to_OOP
This class is all about applying our knowledge of classes and object-oriented program design. Remember, our goal is to attempt to represent some form of reality in our programs, whether it is creating a class that models how users interact with friends, how users store information in their programs, or how the program creates its users. Each of these models can come with attributes that allow for a more detailed represenation of reality.  

Throughout this course, you've learned A TON of Ruby. It's time now to combine your knowledge of object-oriented program design. We always prefer to use classes to model our programs, which goes back to the idea of *templating*. We want to be able to instantiate as many objects as possible and then apply functionality, or action methods, or our objects. 

# wrapping_code_with_class
Let's say we have a code challenge to create a simple calculator. We want our calculator to accept 2 numbers as arguments and be able to perform addition, subtraction, multiplication, and divide. Easy peasy, right?   
```ruby
def add(num1, num2)
    num1 + num2
end
def subtract(num1, num2)
    num1 - num2
end
def multiply(num1, num2)
    num1 * num2
end
def divide(num1, num2)
    num1 / num2
end
```
- But now that you've seen classes in action, these methods might feel a little removed from reality. Let's wrap a `Calculator` class around these methods and observe what we can do with the objects we instantiate.  
```ruby
class Calculator
    attr_accessor :num1, :num2 # in case we want to access and re-assign these numbers later
    def initialize(num1, num2)
        @num1 = num1
        @num2 = num2
    end
    
    def add
        @num1 + @num2
    end
    def subtract
        @num1 - @num2
    end
    def multiply
        @num1 * @num2
    end
    def divide
        @num1 / @num2
    end
end

equation1 = Calculator.new(5,5)
equation1.add
#=> 10
equation1.subtract
#=> 0
equation1.multiply
#=> 25
equation1.divide
#=> 1
```
- Just like that, our program is much more efficient and we can perform each action on any given object! Rather than calling methods in isolation, we are now applying them to objects, just like you would on a real application!  
![1](http://i.imgur.com/2q6jb5X.gif)  


## Challenge:  
##### [Convert to OOP](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/07_class/01_convert_to_OOP/code/01_convert_to_OOP)  

## Navigation  
##### Next lesson: [OOP Project](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/07_class/02_OOP_project)   
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   
