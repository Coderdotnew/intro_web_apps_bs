# intro_to_hashes
Just like arrays, **hashes** are also data structures. However, hashes are more complex and allow us to better organize and structure our information.  

API's organize their public data using **JSON** (JavaScript Object Notation) format which is *very similar* to a hash. JSON is better described in the [API Tutorial](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/11_class/APIs)

# key_and_value
The structure of a hash is slightly different than arrays. Hashes are used when you want to assign a specific value to a group of items. For instance, assigning a birthday to a person, a capital to a state, an address to a person's name. You can think of this like having an array with 2 columns, where the 2nd column is attached to the first and gives a little more details. First, let's look at an empty hash.
```ruby
hash = {}
```
- Rather than square brackets (`[]`), hashes use curley brackets (`{}`). Now let's look at when we might use a hash. Now let's look at an example hash to learn about the syntax.
```ruby
hash = {
    "key_1" => "value 1",
    "key_2" => "value 2",
    "key_3" => "value 3
}
```
- Hashes organize the data into **key-value pairs**. This means that each **key** (on the left side) has a corresponding **value** (on the right side). 
- We use a *hash rocket* (yes, it's really called that) to signify the value that each key is pointing to. 
- Also, notice there are commas separating each item, these are critical to inform Ruby there is another key-value pair coming.
- Lastly, the hash is spaced in a way that resembles 2 columns. This is for readability. Let's compare it to just writing it in a single like like we would an array...
```ruby 
hash = {"key_1" => "value 1", "key_2" => "value 2", "key_3" => "value 3}
```
- Still readable, but not quite as clear as the first example. 
- Now, let's check out when you might use a hash instead of an array.
```ruby
birthdays = ["Neil deGrasse Tyson", "5/5/1958", "Stephen Hawking", "1/8/1942", "Grace Hopper", "12/9/1906"]
```
- When looking at this array, it seems rather confusing to incorporate both pieces of information side-by-side. Let's restructure this with a hash...  
```ruby
birthday_hash = {
    "Neil deGrasse Tyson" => "5/5/1958",
    "Stephen Hawking" => "1/8/1942",
    "Grace Hopper" => "12/9/1906"
}
```
- You'll immediately notice this is much easier to follow. 

# symbols
Data structures are designed to be fast and efficient, so that when you have a database with thousands of emails, passwords, birthday, usernames, passwords, favorites, etc, it's quick and easy to search through these.  

For this reason, it is preferable to use symbols as the key in Ruby, not strings. A **symbol** is an *immutable* and *unique* piece of data. This basically means there can only be 1 symbol used in a data structure, and it *cannot* be changed (string, on the otherhand, are not unique).  
- *Two strings with the same contents are two different objects, but for any given symbol, there can only be one symbol object. This saves times and memory.*

A symbol is represented by a colon, followed by characters. `:symbol` is different than `"symbol"`.  

Think about when you sign up for a social network, like Instagram or Facebook. You're *unique* piece of data is your username, NOT your name, and that's because someone might share your name! So a social network hash might look something like this...
```ruby
usernames = {
    :facebook4life => "Mark Zuckerberg",
    :facebook4lyf => "Eduardo Saverin",
    :facebookforlife => "Sheryl Sandberg"
}
```
- In this example, each username is similar, but still unique. Which might explain why you had to choose a different username with a weird combiation of numbers or a weird spelling, to ensure that you are in fact a unique symbol in the data structure!  

# accessing_keys_and_values
Accessing data from a hash is very similar to an array. There are actually a few ways we can accomplish this. We'll use the `usernames` hash as our example. 

- Accessing a key
```ruby
usernames.keys[0]
#=> facebook4life
```
- Accessing a value
```ruby
usernames.values[0]
#=> Mark Zuckerberg

# OR

usernames[:facebook4lyf]
#=> Eduardo Saverin
```
- Adding a key value pair
```ruby
usernames[:facebook4ever] = "Dustin Moskovitz"

# now if we call the hash, Dustin is added at the end
usernames
#=> usernames = {
    :facebook4life => "Mark Zuckerberg",
    :facebook4lyf => "Eduardo Saverin",
    :facebookforlife => "Cheryl Sandberg",
    :facebook4ever = "Dustin Moskovitz"
}
```
- Changing a value (in case it needs to be updated)
```ruby
usernames[:facebookforlife] = "Sheryl Sandberg"
```
- The new spelling of `Sheryl` is now in the `usernames` hash.  

![1](http://i.imgur.com/XimMSeB.gif?1)  

# hash_methods
Just like arrays, there are specific methods that can be applied to hashes. We have already seen `.values` and `.keys`. So I'll let you head back to the Ruby documentation and see the others for yourself :trollface:  

[Ruby Hash Documentation](http://docs.ruby-lang.org/en/2.0.0/Hash.html#method-i-keys)


## Challenges  
##### [Hash Intro](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/10_class/02_intro_to_hashes/code/01_hash_intro)
##### [Hash Attack](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/10_class/02_intro_to_hashes/code/02_hash_attack)

## Navigation  
##### Next lesson: [Hash Enumerables](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/10_class/03_hash_enumerables)      
##### Previous lesson: [MVC Application](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/10_class/01_mvc_application) 
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   



