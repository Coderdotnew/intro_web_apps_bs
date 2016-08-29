# challenges
In this portion of the lesson, we are going to cover a few advanced topics with regards to data structures. 

# explicit_return
#### using_return_with_.each
As our methods become more compelx and we are dealing with complex data structures, it is time to consider using the `return` keyword explicity. Previously, we have refrained a bit from using `return` explicitly primarily as this allows for clean code when Ruby allows for implicit return values. But what about when we are dealing with a list of items, like an array or a hash, and we want to return *one specific item*?  

##### NOTE: `return` BREAKS OUT OF A FUNCTION EARLY  

```ruby
schools = ["ASU", "USC", "Stanford", "Oregon", "Arizona"]

schools.each do |school|
    if school[0] == "A"
        school 
    end
end
#=> ["ASU", "USC", "Stanford", "Oregon", "Arizona] 
```
- If you follow this iteration closely, you will see that even though in each loop we are asking Ruby to check if the school begins with `"A"`, we are still simply telling it to return each school. This is why all of the items in the original array were returned. 
- Technically, the Ruby interpreter did find the school that beings with `"A"`, *however, we did not explicitly instruct Ruby to return only this value.* Let's use `return` now...
```ruby
schools = ["ASU", "USC", "Stanford", "Oregon", "Arizona"]

schools.each do |school|
    if school[0] == "A"
        return school 
    end
end
#=> "ASU" 
```
- In this case, we explicitly instructed Ruby to return a specific value.
- During this iteration, Ruby checked each school if it began with `"A"`, which in this case there are 2
- However, because `return` breaks out of the function, Ruby *only* returned "`ASU`" rather than `"ASU"` and `"Arizona"`

#### using_return_with_.collect
As we know, `.collect` returns an array that has been manipulated and forgets about the original array. We can also use `.return` in these instances...
```ruby
schools = ["ASU", "USC", "Stanford", "Oregon", "Arizona"]

schools.collect do |school|
    if school[0] == "A"
        school 
    end
end
#=> ["ASU", nil, nil, nil, "Arizona"]
```
- In this case, `.collect.` revising the `schools` array to return schools that being with `"A"`. However, we are not explicitly telling our program to *only* return those values. Therefore, if an item in the array does not match this criteria, then Ruby will set it to `nil`.
```ruby
schools = ["ASU", "USC", "Stanford", "Oregon", "Arizona"]

schools.collect do |school|
    if school[0] == "A"
        return school 
    end
end
#=> ["ASU"]
```
- In our final case, we use `return` which will return *only* `"ASU"` because as soon as Ruby found an item in the array that began with the letter `"A"`, it returned this value and broke out of the function.
- The explicit use of `return` within enumerables and conditionals will become much more clear with practice, I promise!   

You might be asking, then how do I return all the schools that being with A?!. That's a good question.  
To review:  
- We use `.each` to iterate through a list of items (array or hash, or even a string of character), but anything we do to each item is not saved when we return the original array or hash
- We use `.collect` to also iterate through a list of items and we want to return a manipulated array.  

However, in the example above when we were looking for specific items that met a condition, Ruby ignored all those that did *not* meet that condition, even when using `.collect`. In this case, we can push the items we want into a new array (which we've seen but we'll recap, just in case...)   

```ruby
schools = ["ASU", "USC", "Stanford", "Oregon", "Arizona"]
a_schools = [] # define an empty array to push in the schools we want
schools.each do |school|
    if school[0] == "A"
        a_schools << school # push in the school only if it begins with "A"
    end
end
a_schools # return the a_schools array with the newly pushed in items
#=> ["ASU", "Arizona]
```
- Now we have a new array with only the items we want!  

# split_and_join
So you already know that strings have implicit index values, the first character being 0. 
```ruby
"string"[0]
#=> s
```
- But what if we want to iterate over a string? If we try to call `.each` on a string we can't!
- But thanks to Ruby, we can *split* up a string into an array! You've probably already used the `.split` method when dealing with array items that are strings and comprised of multiple words, but we are not ready to dive a little deeper...  

The `.split` method is called on a string and takes in an argument, which is where you want to split the string. 
- If we have a single word and want to split it at each letter, our argument is empty!
```ruby
"string".split("") # our argument is an empty string
#=> ["s", "t", "r", "i", "n", "g"]
```
- Let's say we have a sentence and we want to to create an array having each word as it's own index item. We would split it at each space.
```ruby
"The year is 2016".split(" ") # our argument is a space
#=> ["The", "year", "is", "2016"]
```
- The reason this might be useful is because we might want to access certain parts of a string easily, for instance the year. 
- Other examples might be taking a name from a sentence, taking the date, or split up each sentence when you have a few sentences. 
- Remember, our goal is iterate over data as efficiently and easily as possible, and data structures make that possible! 

Now, let's check out the `.join` method
- The *join* method will take an array and bring it together as a string!
```ruby
"Hello Goodbye".split(" ") # this splits up the string at each space
#=> ["Hello", "Goodbye"]
["Hello", "Goodbye"].join # no argument
#=> "HelloGoodbye"
["Hello", "Goodbye"].join("-") # argument to place in between each joined item
#=> "Hello-Goodbye"
```
- The more you use `.split` and `.join` the more comfortable you will become! Sometimes it is critical to split an array, manipulate it, and then join it together into a new string!  


## Challenges    
##### [Prime Numbers](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/03_challenges/code/01_prime)
##### [Emails](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/03_challenges/code/02_emails)  
##### [Caesar Cipher](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/03_challenges/code/03_caesar_cipher)

## Navigation  
##### Next class: [Object-Oriented Programming I](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/06_class)    
##### Previous lesson: [Array Enumerables](https://github.com/Coderdotnew/intro_web_apps_dgm/tree/master/05_class/02_array_enumerables) 
---  
[Course home](https://github.com/Coderdotnew/intro_web_apps_dgm)   