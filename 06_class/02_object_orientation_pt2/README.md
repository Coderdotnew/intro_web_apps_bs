# intro_to_OOP_pt2
You might already be asking yourself, "But why do we need to use classes? Can't we just code methods and still perform the same functions without using a class?"  
![1](http://i.imgur.com/mZix4dz.gif)

Well, yes and no. As an application developer, you need to start thinking about applications from the eyes of the user, rather than just as a programmer. Thus far, we've been coding in isolation--learning the various tools and skills necessary to eventually build an application, but primarily working in the Terminal and not doing much with our return values our programs have been spitting out. You goal as a programmer, though, is to build a program that is efficient and can service hundreds, thousands, or maybe even millions of users! By creating classes, you streamline your program to have templates for every function you can think of. Classes help us better organize our programs by functionality rather than having every method we write in one file...that could get really messy!  

# refactoring
**Refactoring** is the process of restructuring existing code without changing the behavior of the program. Typically, refactoring can be though of as *cleaning up* your code--making it easier to read and more concise. You've probably refactored many of your methods without even knowing it!  

There's a really cool way we can refactor our class code to make it easy to read and *way* less code! 
Let's say we are creating an app for students to learn to code! We will start by creating a `User` class. Here are our specifications for an instantiated `User` object:
- The class is initialized with a name, username, email, and password passed in as arguments
- These variables are reassigned to instance variables
- The class is also initialized with a number of friends (`coder_friends`) and the languages being learned, both set to an empty array
- We want to be able to *read* and *write* over the name, and email 
- We want to be able to only be able to *write* over and NOT *read* the password (we want to be able to *change* our password, not *display* our password)
- We want to be able to only *read* and NOT *write* over our username (once you pick a username, that's it)
- We want to be able to *read* (return) both the number of friends and the languages being learned arrays
- We want a method that will push in a new language into the language array and a new friend into the friend array
```ruby
class User
    def initialize(name, username, email, password)
        @name = name
        @username = username
        @email = email
        @password = password
        @fellow_coders = []
        @languages = []
    end
    
    def name=(name) # writer method
        @name = name
    end
    def name #reader method
        @name
    end
    def username
        @username
    end
    def email=(email)
        @email = email
    end
    def email
        @email
    end
    def password=(password) # password only needs a writer method
        @password = password
    end
    
    def fellow_coders # reader method only to return the array
        @fellow_coders
    end
    def languages
        @languages
    end
    
    def add_coder(name)
        @fellow_coders << name
    end
    def add_language(language)
        @languages << language
    end

end
```
- You might be looking at this and thinking it's kind of long! Well, that's becuase it is. 
- Also notice there is a lot of repetition occuring here, primarily with our **reader** and **writer** methods
- Time to refactor...

# attribute_readers_writers_and_accessors
When dealing with objects, we want to have quick and easy access to the attributes, whether we only want to see them or actually change the value. Let's recap the syntax for a **reader** method:
```ruby
def attr_name
    @attr_name 
end
```
- In reader methods, we are simply *returning* the value of the instance variable. All reader methods will look *just like this*
- Here is a **writer** method
```ruby
def attr_name=(attr_name)
    @attr_name = attr_name
end
```
- In writer methods, we are passing in a new value for the attribute and reassigning this value to the instance variable defined upon initialization. 
- Our object forgets about the initial value and only remembers the newly assigned value
- Let's refactor...  
```ruby
class User
    attr_accessor :name, :email
    attr_writer :password
    attr_reader :username, :fellow_coders, :languages
    
    def initialize(name, username, email, password)
        @name = name
        @username = username
        @email = email
        @password = password
        @fellow_coders = []
        @languages = []
    end
    
    def add_coder(name)
        @fellow_coders << name
    end
    def add_language(language)
        @languages << language
    end

end
```
- SO. MUCH. LESS. CODE!
- Let's break it down.
- First, notice we are using **symbols**. Recall that a symbol is similar to a string but it takes up less memory and more efficient than strings. This is because, *two strings with the same contents are two different objects, but for any given symbol, there can only be one symbol object. This saves times and memory (when we use a symbol for our `attr_accessors`, `attr_writers`, and `attr_readers`, we can ensure this symbol name will only be used once in the class)
- Next, we use the keywords, `attr_accessor`, `attr_reader`, and `attr_writer` to perform the same function as our reader and writer methods.
- `attr_accessor`, or **attribute accessor** is a replacement for *both* methods. We use `attr_accessor` if we have an attribute we want to be able to access and also change (in this case, `name` and `email`)
- `attr_writer`, or **attribute writer** is a replacement for the *writer* method. We use `attr_writer` if we have an attribute we want to be able to change, but not access and return to us (in this case, `password`)
- `attr_reader`, or **attribute reader** is a replacement for the *reader* method. We use `attr_reader` if we have an attribute we want to be able to access and view, but not change (in this case, `username`) 
- But what about `fellow_coders` and `languages`?
- The reason we can use `attr_reader` for these is because they follow the pattern of the reader method! The only function we want this reader method to perform is to return the instance variable, in this case, the arrays!
- We do not want to create a `fellow_coders` and `languages` writer method because they perform a *specific function*. This is why we have action methods written in our class that add items to the  arrays. 
- At this point, we can continue adding action methods that perform specific functions, such as search for a name in the `fellow_coders` array. 
- Let's see how this class might perform when calling on the various methods:  
```ruby
user1 = User.new("Drake", "drizzy6", "drake@work.com", "passw0rd")
user1.name
#=> "Drake"
user1.add_coder("Rihanna")
user1.add_coder("Nicki")
user1.fellow_coders
#=> ["Rihanna", "Nicki"]
```
- Hopefully it's starting to come together! 
- The user was instantiated with the correct attributes and stored to a variable, `user1`
- The `add_coder` action method was called on `user1` and a name was then pushed into the `fellow_coders` array.
- Because there is an `attr_reader` for `fellow_coders`, we have the ability to call `fellow_coders` on `user1` and this simply returns the updated array with the newly pushed in names!  
![2](http://i.imgur.com/7N5u7Sw.gif)

# notes
- Though refactoring is generally a good practice, it is only productive if you can easily read your codebase and have a solid grasp on what is happening. Your program will run just as smoothly if you choose to write out every reader and writer method until you feel comfortable with classes. 
- Every class does not require reader and writer methods. You'll notice as you practice more and more that some classes just perform a specific function without having to necessarily need to be initialized with an attribute or necessarily need a reader or writer method. 
- Soon, we are going to practice how to wrap our old code challenges in classes to better demonstrate object-oriented programming (this will make it really easy to convert our code challenges to applications later!)


## Challenges:  
##### [Metropolis](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class/02_object_orientation_pt2/code/01_metropolis)
##### [Rock-Paper-Scissors](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class/02_object_orientation_pt2/code/02_rps)  

## Navigation  
##### Next lesson: [Challenges](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class/03_challenges)    
##### Previous lesson: [Intro to OOP Pt. 1](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class/01_object_orientation_pt1) 
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)  
