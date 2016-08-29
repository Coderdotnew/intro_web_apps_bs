# intro_to_OOP_pt1
EVERYTHING IS AN OBJECT IN RUBY. But, *what are objects*?

# object_oriented_programming
Ruby belongs to a class of programming languages that are referred to as **object oriented languages (OOP)**. OOP languages are organized around **objects**.  

As programmers, our goal is to re-create a representation of reality in a program. For instance, Facebook was programmed in an attempt to recreate the college experience by allowing a user to have a profile, friends, photos, and a way to communicate.  

In object-oriented programming, we create **objects** that have attributes, just like objects in real life have attributes. A person in real-life can have an age, a name, a height, and hometown, so in an object-oriented program, we can create an object called Person, and give them those same attributes.  
![1](http://i.imgur.com/rtvqaRm.gif)      

# template
Imagine being a programmer at Facebook. You're standing at your desk and you get a notification that someone signs up! It's your job to program the profile for the new user and give them all the necessary attributes. Done! 10 seconds later you get another notification for another user sign up... and then another... and then another for all 1.6 billion users. I think you can see how annoying and inefficient it would to create a new user from scratch everytime there is a sign up. Here is where **objects** come in handy!  
```ruby
user1 = {
    :name => "Rihanna",
    :email => "rihanna@gmail.com",
    :password => "umbrella",
    :friends => []
}
# imageine coding a user hash everytime someone signs up!!
```
Objects are like generic templates that can take in specific attributes depending on the user, and eventually even perform specific functions. Let's check out the syntax...  
```ruby
class User
    # more code will go here later!
end
user1 = User.new 
```
- We define a class with the keyword `class` and specific a class name with a capitalized word
- Just like for methods, loops, and enumerables, the keyword `end` is also required
- `user1` is a variable that stores the object
- We **instantiate**, or create a new **instance** of the object with the `.new` method
- Because the class is a template, we can easily create many instances of the class by calling `.new` on the object

# object_id
Every time an object is instantiated, it is given a unique **object id** that Ruby automatically assigns. 
```ruby
user1 = User.new
#=> <User:0x007fa3b311b738>
user2 = User.new
#=> <User:0x007fed0b8e7880>
```
- When you log on to Facebook or Instagram or Uber you might see your name, picture, and email address but all the program sees you as is a random set of numbers and letters when you log on to Facebook or Instagram or Uber... womp womp :broken_heart:  

# initialize_method
The `initialize` method is automatically called with `.new`. This is GREAT because `initialize` is kind of tough to type and spell! When we instantiate a new object, we might want to instantiate, or create, it with certain attributes upon *initialization*. For instance, the `User` template might require a name and email to be set everytime a new instance of the class is created.
```ruby
class User
    def initialize(name, email)
    end
end
```
- The initialize method is optional and is called no matter what (even if you don't explicitly write it out in your class). Sometimes we may create a class that doesn't get instantiated with any attributes upon initialization. In this case, the `User` class now requires a name, and email to be set upon initialization. Think of these as method arguments for the class.
```ruby
user1 = User.new("Rihanna", "rihanna@gmail.com")
```  
- Just like when we call a method with the wrong number of arguments, if we do not instantiate the object with a different number of arguments than defined, we will recieve the same error!

# instance_variables
You might alread be asking scope related questions such as how the `name` and `email` variables can be accessed throughout the class. The answer is **instance variables**. An instance variable is any variable with an `@` symbol before it and allows its scope to increase throughout the entire class. So we need to reassign our arguments to instance variables...  
```ruby
class User
    def initialize(name, email)
        @name = name # reassigning name to an instance variable, @name, whose scope spans the entire class
        @email = email # reassigning email to an instance variable, @email, whose scope spans the entire class
    end
end
```
- Now, we can access these variables anywhere in our class :smile_cat:

# reader_methods
It is important for us to be able to call on these attributes. For example, you may want to call and view your name, email, address, or list of friends. For this, we need a **reader** method, which will return to us the value of the attribute.
```ruby
class User
    def initialize(name, email)
        @name = name
        @email = email
    end
    def return_name
        @name
    end
    def return_email
        @email
    end
end

user1.name
#=> "Rihanna"
user1.email
#=> "rihanna@gmail.com
```
- Notice we call on our instance variables inside of the reader method and still have access to these variables because of the extended scope.
- Our reader methods simply return the value of the instance variable so I like to reduce the name of the reader method to `name` and `email`
```ruby
class User
    def initialize(name, email)
        @name = name
        @email = email
    end
    def name
        @name
    end
    def email
        @email
    end
end

user1.name
#=> "Rihanna"
user1.email
#=> "rihanna@gmail.com
```

# writer_methods
It is important for us to be able to also change these attributes. For example, you may want to call change your name, email, password, or current city. For this, we need a **writer** method, which will allow us to rewrite the value of the attribute.
```ruby
class User
    def initialize(name, email)
        @name = name
        @email = email
    end
    def name
        @name
    end
    def email
        @email
    end
    def reassign_name=(name)
        @name = new_name
    end
    def reassign_email=(email)
        @email = new_email
    end
end

user1.name=("RiRi")
user1.email=("riri@gmail.com")
user1.name
#=> "RiRi"
user1.email
#=> "riri@gmail.com"
```
- The most important thing to notice here is the name of the writer method **includes the =()**. There cannot be a space and it must accept an argument.
- In this case, our argument is `name` and `email`. If it is easier for you to read, you can pass in `new_name` and `new_email` as these new values are replacing the current values stored in the respective instance variables. 
- Also notice that when we call a writer method, we MUST include the `=()` as part of the method call and pass in the new attribute value we wish to reassign to the instance variable. Now when we call on the reader method, the object has a new attribute value!
- Just like with reader methods, the function of this method is to rewrite our attributes, so you can call the method whatever you like, as long as you include the `=` sign and the argument. I like to keep it simple and consistent and call them the same as my reader method (`name=(name)` and `email=(email)`). But if you choose a more descriptive name as shown in the example, that is totally fine too!  
![2](http://i.imgur.com/7cLgUJH.gif)  

# nouns_and_verbs
Objects are nouns.  
Methods are verbs.  

Objects can have descriptors (**attributes**) and actions (**methods**). The descriptors are how we describe the object (name, email, location, etc) whereas the actions allow the object to perform a specific action (add friend, gain points, gather food, travel, etc).  

This is where your extensive knowledge of programming comes into play, because you can already begin to create actions (methods) for your classes than can do a whole bunch of things.

# code_along
Let's create a class, Coder, that can represent a person as a coder  
```ruby
class Coder
end
student1 = Coder.new 
#=> <Coder:0x007fc7598fb150>
```
- We can already instantiate a new instance of the `Coder` class with the `.new` method and are given a unique object ID.
- Let's give the `Coder` some attributes upon initialization.
```ruby
class Coder
    def initialize(name, age, school)
        @name = name
        @grade = grade
        @school = school
    end
end
student1 = Coder.new("Andrew Luck", 26, "Stanford University")
```
- Uh oh! We've defined these attributes for our first Coder but can't access these values or change them if we wanted to. We need some reader and writer methods!
```ruby
class Coder
    def initialize(name, age, school)
        @name = name
        @grade = grade
        @school = school
    end
    def return_name
        @name
    end
    def return_age
        @age
    end
    def return_school
        @school
    end
    def reassign_name=(name)
        @name = name
    end
    def reassign_age=(age)
        @age = age
    end
    def reassign_school=(school)
        @school = school
    end
end
student1.reassign_name=("Andy Luck")
student1.return_name
#=> "Andy Luck"
student1.return_age
#=> 26
student1.return_school
#=> "Stanford University"
```
- Amazing! Our Coder object has 3 attributes that can be read and re-written! 
- Let's give our Coder object some actions now...
```ruby
class Coder
    def initialize(name, age, school)
        @name = name
        @grade = grade
        @school = school
        @languages = [] #instantiate with an empty array to store languages learned
    end
    def return_name
        @name
    end
    def return_age
        @age
    end
    def return_school
        @school
    end
    def reassign_name=(name)
        @name = name
    end
    def reassign_age=(age)
        @age = age
    end
    def reassign_school=(school)
        @school = school
    end

    def add_language(language)
        @languages << language
    end
end
student1.add_language("Ruby")
```
- Now our object has the ability to add a language to their language array! However, we don't yet have a method that returns the array of languages that was created upon initialization. Let's create that method!
```ruby
class Coder
    def initialize(name, age, school)
        @name = name
        @age = age
        @school = school
        @languages = [] #instantiate with an empty array to store languages learned
    end
    def return_name
        @name
    end
    def return_age
        @age
    end
    def return_school
        @school
    end
    def reassign_name=(name)
        @name = name
    end
    def reassign_age=(age)
        @age = age
    end
    def reassign_school=(school)
        @school = school
    end
    
    def add_language(language)
        @languages << language
    end
    def return_languages
        @languages
    end
end
student1.add_language("Ruby")
student1.return_languages
#=> ["Ruby"]
```
- Now we can add languages and we can return our list of languages!
- And hopefully now you have a better idea of where Coder.new comes from...  
![3](http://i.imgur.com/frCVzJk.png)  

##### The more objects you create the better you will get at designing object-oriented programs that replicates the objects and the activities we know in real life!


## Challenges:  
##### [Avengers](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class/01_object_orientation_pt1/code/01_avengers)
##### [Nemo and Friends](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class/01_object_orientation_pt1/code/02_nemo_and_friends)
##### [Hogwarts Houses](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class/01_object_orientation_pt1/code/03_hogwarts_houses)  

## Navigation  
##### Next lesson: [Intro to OOP Pt. 2](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class/02_object_orientation_pt2)  
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   
