# array_enumerables
"There is no abstract art. You must always start with something. Afterward you can remove all traces of reality."  - Pablo Picasso  

Let's talk about abstract art. Pablo Picasso famously drew this bull...  
![1](http://i.imgur.com/hw8DBcY.jpg?1)  
And then he drew this bull...  
![2](http://i.imgur.com/S1SdvQC.jpg?1)   
Notice the second bull has WAY less details, but is still easily identifiiable as a bull. This is the concept of **abstraction**. In computer science, this means stripping away data and syntax to reduce complexity and increase efficiency. 

Now for abstraction in Ruby. Ruby is defined as a relatively *high-level programming* language because it is highly abstracted from *machine code*. This basically means it is dynamic, interpreted, and has flexible syntax. The deeper we dive into Ruby, you'll realize how many ways there are to do the exact. same. thing.  

# looping = least_abstract
Let's look at an example that performs the same fuction in varying degrees of abstraction. We are going on a college roadtrip and are visiting several colleges. Our goal is to create a loop using an array of colleges and to loop through that array until each college has been visited.  

#### loop do = least abstract
```ruby
schools = ["ASU", "UofA", "USC", "UCLA", "Stanford", "Berekeley"]

schools_to_visit = schools.size # the size method returns the number of items in the array
schools_visited = 0

loop do
    if schools_to_visit > schools_visited
        puts "#{schools[schools_visited]} is next!"
        schools_visited += 1
    else
        break
    end
end
```
- This is the least abstract option. 

#### while loop = slightly more abstract
```ruby
schools = ["ASU", "UofA", "USC", "UCLA", "Stanford", "Berkeley"]

schools_to_visit = schools.size # the size method returns the number of items in the array
schools_visited = 0

while schools_to_visit > schools_visited
    puts "#{schools[schools_visited]} is next!"
    schools_visited += 1
end
```
- `while` is more abstract because we were able to remove the conditional as well as the break. The `while` loop has the same functionality, with less details and syntax.

# ruby_enumerables
**Enumerables** are Ruby's way of accessing elements in a collection, one at a time. To *enumerate* is to mention a number of things one by one, which is exactly what we are going to do. Ruby has a number of built-in methods that will enumerate for us.  

This is also referred to as **iteration**, meaning we will *iterate* through a collection of items, one at a time.

# each
#### each = most abstract  
```ruby
schools = ["ASU", "UofA", "USC", "UCLA", "Stanford", "Berkeley"]

schools.each do |school|
    puts "#{school} is next!"
end

# ASU is next!
# UofA is next!
# USC is next!
# UCLA is next!
# Stanford is next!
# Berkeley is next!
```
- We've abstracted so much that our code is down to only a few lines, and we've been able to strip away our counter!
- A lot is happening here. Let's break it down.

Ruby iteration works similar to a loop, but only works on collections, like am array. Rather than you defining the loop length or specifications, an enumerable will iterate through the array and then `break` once it has looped through every item in the array.  

The syntax can be a bit tricky to get used to though
```ruby
array = [1, 2, 3, 4, 5]

array.each do |i|
    puts "Iteration number #{i}"
end

# Iteration number 1
# Iteration number 2
# Iteration number 3
# Iteration number 4
# Iteration number 5
```
- In the first line, the `.each.` method is called using the *dot-notation*, like all other methods. This can ONLY be called on collections, like arrays.
- Then there's `do`, which we have seen before. This is a Ruby keyword that tells Ruby to perform a specific functiom. 
- Following `do` there is the actual *iterator*. The iterator is contained within **pipes**, which you will get used to in Ruby. 
- Note: In the first example, the array was called `schools`. If there is a descriptive array name like this, feel free to name the iterator the singular version of the array. When there isn't a specific array name, simply use `i` as the iterator. 
- Note: The iterator is a variable that stores the value of each item in the array. So, when we interpolate or use this variable in the logic below, we are referring to this iterator.
- Just like a method or a loop, you MUST close with an `end` keyword

# iterate_but_not_manipulate
Often times we will want to manipulate our arrays--perhaps perform a math function on a set of numbers or capitalize a list of names.  

When using `.each`, whatever action you decide to perform on the colletion of items will occur, however, it *will not manipulate the items in the array*. This means that if you call on the array after an `each` iteration, the origiginal array will return. 
```ruby
def times_2(nums)
    nums.each do |i|
      i * 2
    end
end

nums = [1,2,3]
times_2(nums) # passing in the nums array as an argument
#=> [1, 2, 3]
```
- In this case, the enumable multiplied *each* item in the array by 2 but did not actually change the array itself. If we want to manipulate the array, there are a few ways we can do this.

# collect
**Collect** is another Ruby enumerable mehtod. `collect` acts *exactly* the same way as `each`, except it manipulate the original array.
```ruby
def times_2(nums)
    nums.collect do |i|
      i * 2
    end
end

nums = [1,2,3]
times_2(nums) # passing in the nums array as an argument
#=> [2, 4, 6]
```
- Everything in this example is the same with the exception that the returned array has been manipulated during the iteration with `collect`  
- Note: You may see `.map` in examples online. `.map` is the same method as `.collect`. 

# manipulate_with_each
What if we want to use `each` but still manipulate our array? 
```ruby
def manipulate_with_each(nums)
    new_nums = [] # define an empty array
    array.each do |i|
        new_array << i * 2 # push in the manipulated values into new_nums array
    end
    new_nums # returning new_nums here (manipulated nums array)
end

nums = [1, 2, 3]
manipulate_with_each(nums)
#=> [2, 4, 6]
```
- In this example, we achieved the same return value as when we used collect, but had to push in the manipulated values. Though it's slightly less abstract than the `collect` method, it still performs similarly. 
- Note: We didn't output this time, but I'm sure you could figure out how to do that as well!


##### Note: You will likely need to use the Ruby documenation page to complete some of the tests in the spec files 

## Challenges
##### [Squaring](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/02_array_enumerables/code/01_squaring_for_days)
##### [Olympics](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/02_array_enumerables/code/02_olympics)
##### [Class Schedule](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/02_array_enumerables/code/03_class_schedule)
##### [Word Manipulator](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/02_array_enumerables/code/04_word_manipulator)  

## Navigation  
##### Next lesson: [Challenges](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/03_challenges)    
##### Previous lesson: [Intro to Arrays](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/01_intro_to_arrays)    
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   
