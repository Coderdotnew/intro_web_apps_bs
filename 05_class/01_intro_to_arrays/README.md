# intro_to_arrays
It's time to throw in **data structures** and learn to apply all those concepts to stored data.  

In this lesson, we will cover **arrays** -- the data structures Ruby relies on to organize our data! This lesson is critical because almost all applications and programs deal with HUGE amounts of data and we need to know how to access this data, manipulate this data, loop throguh this data, and know how to read this data!  Let's get started...  
![1](http://i.imgur.com/N0TYx2x.gif)

# arrays
**Arrays** are defined as a display or arrangements of things in a particular way. In Ruby, an array is one of most straightforward ways we can organize our data. Specifically, they are *ordered, intger-indexed collections of any item.*  

Simply put, arrays list objects together, orders them with index values, and allows programmers to access and manipulate these items.  
Arrays follow the following syntax:  
```ruby 
array1 = ["item 1", "item 2", "item 3"]
array2 = [1, 2, 3]  
array3 = ["item 1", 1, "item 2", 2]
```
Arrays can include numbers and/or integers and are defined and stored to a variable with the same naming conventions we already know.

# when_to_use_arrays
Arrays are used ALL THE TIME with all types of data. However, it is important to note that arrays are typically reserved for groups of data that can be easily organized together. For example, first names, states, countries, ages, etc
```ruby 
first_names = ["Steven", "Miguel", "Andrea", "Kathleen"]
countries = ["United States", "Mexico", "Italy", "Croatia"]  
ages = [21, 22, 23, 24, 25, 26]
```
- Notice these groups of data are all easily grouped together. It would make it rather confusing to include names *and* ages in the same array. Let's take a look
```ruby 
first_names_and_ages = ["Chris", 21, "Sarah", 22, "Andrea", 23, "Mark", 24]
```
- This might seem readable with a small amount of data, but imagine having tens of thousands of names and ages! That could get really messy. For this portion of the lesson, we are focusing on singular and similarly grouped chunks of data that can fit into arrays.

# array_methods
Just like there are methods reserved for integers and strings, there are methods that are reserved for arrays. First, let's define an array of schools.
```ruby
schools = ["ASU", "USC", "Stanford", "Oregon"]
```
- There are a number of methods we can use on this data set. 
- [Ruby Array Documentation](http://ruby-doc.org/core-2.3.0/Array.html): This is the official Ruby documentation you should become familiar with. This provides a number of examples and ALL of the possible methods you can use on arrays. We will only cover a few in this lesson, because it's most important to know how they are used rather than memorizing every single array method.
```ruby
schools = ["ASU", "USC", "Stanford", "Oregon"]
schools.first
#=> "ASU"
schools.last
#=> "Oregon"
schools.reverse
#=> ["Oregon", "Stanford", "USC", "ASU"]
schools.first.reverse
#=> "nogerO"
schools.sort
#=> ["ASU", "Oregon", "Stanford", "USC]
schools.count
#=> 4
```
- Let's look at a few more examples...
```ruby
numbers = [100, 7, 8, 19, 27, 61)
numbers.sort
#=> [7, 8, 19, 27, 61, 100]
numbers.count
#=> 6
```
- Ruby doesn't care what is inside of the array as it will act on the array rather than the specific elements within the array... that is, unless you access specific elements from the array.
- We already saw how to access the first item in the `schools` array using the `.first` method. Let's actually use array index values...

# index_values
All Ruby arrays are automatically assigned an index value. Ruby likes to stay organized so it numbers your array for you, this makes it easier to access specific elements based on their index value.  

| Index | School |
| --- | --- |
| 0 | ASU | 
| 1 | USC |
| 2 | Stanford |
| 3 | Oregon |  

Ruby loves keeping things organized. **Even strings are automatically assigned index values (the first character is also at index 0)**

#### CAUTION: RUBY INDEX VALUES BEGIN AT 0 FOR DATA STRUCTURES. REPEAT, RUBY INDEX VALUES BEGIN AT 0, NOT 1

- You can access specific elements based on their index value and brackets using the following syntax:
```ruby
array_name[index_value]
```
```ruby
schools = ["ASU", "USC", "Stanford", "Oregon"]
schools.first
#=> "ASU"
schools[0]
#=> "ASU"
schools[2]
#=> "Stanford"
```
- This might seem a bit counter-intuitive but it's the way machines operate. When using indeces in data structures, just subtract 1 from the number you are attempting to access and you will be good to go :sunglasses:

Oddly enough, you can actually use negative values to go to the end of an index and search backwards... this will become important later as your data structures increase in complexity and length and you wanna see what's at the end rather than the beginning...
```ruby
schools = ["ASU", "USC", "Stanford", "Oregon"]
schools[-1]
#=> "Oregon"
```

# popping_and_pushing
We are just barely getting started with the ways in which we can manipulate our array data structures. But what if we want to add an item into our array or remove one?  

The `.push` method allows us to "push" an item into our array. The `.push` method needs an argument: the item you are intending to push in to the array.  
Similarly, we can use the syntax I prefer: the **shovel** operator `<<` 
```ruby
schools = ["ASU", "USC", "Stanford", "Oregon"]
schools.push("Harvard")
schools
#=> schools = ["ASU", "USC", "Stanford", "Oregon", "Harvard"]

schools << "Harvard"
schools
#=> schools = ["ASU", "USC", "Stanford", "Oregon", "Harvard"]
```
- You'll notice the syntax is a bit cleaner using the shovel operator but its up to you! 

The `.pop` method "pops" an item off the end of the array (i.e. removes the last item). This method *does not* require an argument because it will take off the last item in the array by default  

The pop method returns the item that was popped off, not the array without the last item. You must call the array again to return the array without the last item included
```ruby 
schools = ["ASU", "USC", "Stanford", "Oregon"]
schools.pop 
#=> "Oregon"
schools
#=> ["ASU", "USC", "Stanford"]
```
- Again, it is important to note there are numerous other array methods to perform the same function, all of which can be found in the Ruby documentation page :thumbsup:

Note: Sometimes, strings have multiple words and you might want to access just one of those words in that specific item. A helpful method you might want to Google is how to *split* up this item and what happens when you do *split* it up. 


## Challenges  
##### [Array Methods](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/01_intro_to_arrays/code/01_array_methods)
##### [Access Granted](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/01_intro_to_arrays/code/02_access_granted)
##### [Pop and Push](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/01_intro_to_arrays/code/03_pop_n_push)

## Navigation  
##### Next lesson: [Array Enumerables](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/02_array_enumerables) 
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   
